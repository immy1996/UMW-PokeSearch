from flask import Flask, render_template, request, redirect, url_for
import psycopg2, psycopg2.extras, os
app = Flask(__name__)
import psycopg2, psycopg2.extras, os, random
import uuid
from flask import Flask, render_template, request, redirect, url_for, session
from flask.ext.socketio import SocketIO, emit

app = Flask(__name__, static_url_path='')
app.config['SECRET_KEY'] = 'secret!'

messages = []

def connectToDB():
  connectionString = 'dbname=pokemon user=pokeuser password=pokemon host=localhost'
  try:
    return psycopg2.connect(connectionString)
  except:
    print("Can't connect to database")

socketio = SocketIO(app)

@socketio.on('connect', namespace='/pokemonsearch')
def makeConnection():
    print('connected')

@socketio.on('identify', namespace ='/pokemonsearch')
def on_identify(search):
    print(search)

@app.route('/',  methods=['GET', 'POST'])
def mainIndex():
    connection = connectToDB()
    cursor = connection.cursor(cursor_factory=psycopg2.extras.DictCursor)
    try:
        print('User: ' + session['username'])
    except:
        session['username'] = ''
        
    
    # if user typed in a post ...
    if request.method == 'POST':
          username = request.form['userName']
          print('incoming username ' + username)
          pw = request.form['pw']
          try: 
            print(cursor.mogrify("select * from users where username = %s AND password = crypt(%s, password);", (username, pw)))
            cursor.execute("select * from users WHERE username = %s AND password = crypt(%s, password);" , (username, pw))
            if cursor.fetchone():
              print("got here")
              session['username'] = username
              session['loggedIn']=True 
            else:
              session['loggedIn']=False
              session['username']=''
          except:
            print("Error accesing from users table when logging in")
            print(cursor.execute("select * from users WHERE username = %s AND password = crypt(%s, password);" , (username, pw)))
    print('Username: ' + session['username'])
    if session['username'] == '':
        session['loggedIn'] = False
        print("Nobody is currently logged in.") 
    else:
       session['loggedIn'] = True
       print('User: ' + session['username'])

    connection.commit()

    try:
    	numbers = random.sample(xrange(1,151), 6)
    	pokeList = []
    	PokeBanner = []
    
    	for i in range(len(numbers)):
    	    pokestring = cursor.mogrify("SELECT * from pokemon where id = '%s';", (numbers[i], ))
    	    pokemon = cursor.execute(pokestring)
    	    A = cursor.fetchall()
    	    pokeList.append(A)
    
    	types = ['bug', 'fighting', 'water','fire', 'poison', 'ground', 'rock', 'psychic', 'ghost', 'electric', 'normal', 'dragon', 'ice', 'flying', 'grass']
    	x = range(0,14)
    	#print x
    	random.shuffle(x)
    	#print x
    	typeList = []
    	c = []
    	number = random.sample(xrange(1,151), 6)       
    	print "NUM is: "
    	print number
    	for str in number:
    	    string = cursor.mogrify("SELECT name, image from pokemon where id = '%s';", (str,))
            D = cursor.execute(string)
            d = cursor.fetchall()
            d = [item for sublist in d for item in sublist]
    	    PokeBanner.append(d[1])
    	print "Poke Banner: "
    	print PokeBanner
    	for num in x:
    	    string = cursor.mogrify("SELECT name from pokemon where id IN (SELECT poke_id from types where type_id = (SELECT id from PossibleTypes where nameoftype = %s));", (types[num],))
    	    pokeType = cursor.execute(string)
    	    A = cursor.fetchall()
    	    a = [item for sublist in A for item in sublist]
            randomNum = random.randint(0,len(a)-1)
    	    choosenOne = cursor.mogrify("SELECT * from pokemon where name = %s;", (a[randomNum],))
    	    x = cursor.execute(choosenOne)
    	    B = cursor.fetchall()
    	    b = [item for sublist in B for item in sublist]

    	    if(b[1] == 'Nidoran'):
    	        if(b[0] != 29):
    	            choosenstr = cursor.mogrify("SELECT * from pokemon where name = 'Nidoran' AND male = %s;", (100.0,))
                else:
    	            choosenstr = cursor.mogrify("SELECT * from pokemon where name = 'Nidoran' AND female = %s;", (100.0,))
    	        xx = cursor.execute(choosenstr)
    	        C = cursor.fetchall()
    	        c = [item for sublist in C for item in sublist]
    	        c.append(types[num])
    	        typeList.append(c)
            else:
                b.append(types[num])
                typeList.append(b)


    except Exception as e:
        print(e)
	print("Error executing select")
 
    return render_template('home.html', PokeBanner=PokeBanner, pokeList=pokeList, typeList=typeList, types=types, loggedIn=session['loggedIn'], user=session['username'])
   
@app.route('/login', methods=['GET', 'POST'])
def login():
    #Connect to DB
    connection = connectToDB()
    cursor = connection.cursor(cursor_factory=psycopg2.extras.DictCursor)
    #Try to print the user, if not logged in this will throw an error and we set username to an empty string
    
    session['loggedIn'] = False
    
    try:
        print('User: ' + session['username'])
    except:
        session['username'] = ''
        
    # if user tried to log in ...
    if request.method == 'POST':
          #Get username
          username = request.form['userName']
          print('incoming username ' + username)
          
          #Get password
          pw = request.form['pw']
          session['SignedInButton'] = False
          SignedInButton = session['SignedInButton']
          #Try and find the user and password combo in the table
          try: 
            #Print the query running
            print(cursor.mogrify("select * from users where username = %s AND password = crypt(%s, password);", (username, pw)))
            
            #Execute on the db
            cursor.execute("select * from users WHERE username = %s AND password = crypt(%s, password);" , (username, pw))
            
            #If a user-pwd combo was found and it matches then log the person in
            if cursor.fetchone():
              print("got here")
              SignedInButton = False
              session['username'] = username
              session['loggedIn']=True 
              return redirect(url_for('mainIndex'))
            #If not, then they aren't logged in, you want to put something here to let the person know that it did not work out
            else:
              print("Invalid username or password!")
              connection.rollback()
              SignedInButton = True
              session['loggedIn']=False
              session['username']=''
              return render_template('login.html', failed = SignedInButton)
          except:
            print("Error accesing from users table when logging in")
            #print(cursor.execute("select * from users WHERE username = %s AND password = crypt(%s, password);" , (username, pw)))
    print('Username: ' + session['username'])
    
    #Go to home page
    
@app.route('/logout', methods=['GET', 'POST'])
def logout():
    #Username is nothing and loggedIn is false
    session['username'] = ''
    session['loggedIn'] = False
    return redirect(url_for('mainIndex'))

@socketio.on('chatupdate', namespace ='/pokemonsearch')
def chatupdate(message):  
    emit('updatemessage', message, broadcast = True)
    ## added this thing here in server.py and added updatemessage in controller.js
@app.route('/chat')
def chat():
    connection = connectToDB()
    cursor = connection.cursor(cursor_factory=psycopg2.extras.DictCursor)
    query = cursor.mogrify("select * from msgs;")
    cursor.execute(query)
    result = cursor.fetchall()
    messages[:] = []
    for r in result:
        messages.append({'text': r[2], 'name': r[1]})
    return render_template('chat.html', messages = messages, loggedIn=session['loggedIn'], user=session['username'])

@socketio.on('message', namespace ='/pokemonsearch')
def newMessage(message):
    connection = connectToDB()
    cursor = connection.cursor(cursor_factory=psycopg2.extras.DictCursor)
    query = cursor.mogrify("select * from users WHERE username = %s" , (session['username'],))
    print query
    cursor.execute(query)
    result = cursor.fetchone()
    if result:
        print(session['username'])
        tmp = {'text': message, 'name': session['username']}
        queryTerm = (session['username'], message)
        query = cursor.mogrify("INSERT into msgs (username, message) VALUES (%s,%s)", queryTerm)
        print(query)
        cursor.execute(query)
        connection.commit()
        emit('message', tmp, broadcast = True)
    
    
    
    
    
@app.route('/about')
def about():
    connection = connectToDB()
    cursor = connection.cursor(cursor_factory=psycopg2.extras.DictCursor)
    try:
        print('User: ' + session['username'])
    except:
        session['username'] = ''
    # if user typed in a post ...
    if request.method == 'POST':
          username = request.form['userName']
          print('incoming username ' + username)
          pw = request.form['pw']
          try: 
            print(cursor.mogrify("select * from users where username = %s AND password = crypt(%s, password);", (username, pw)))
            cursor.execute("select * from users WHERE username = %s AND password = crypt(%s, password);" , (username, pw))
            if cursor.fetchone():
              print("got here")
              session['username'] = username
              session['loggedIn']=True 
            else:
              session['loggedIn']=False
              session['username']=''
          except:
            print("Error accesing from users table when logging in")
            print(cursor.execute("select * from users WHERE username = %s AND password = crypt(%s, password);" , (username, pw)))
    print('Username: ' + session['username'])
    if session['username'] == '':
        session['loggedIn'] = False
        print("Nobody is currently logged in.") 
    else:
       session['loggedIn'] = True
       print('User: ' + session['username'])
       
    PokeBanner = []
    try:   
        number = random.sample(xrange(1,151), 6)       
    	print "NUM is: "
    	print number
    	for str in number:
    	    string = cursor.mogrify("SELECT name, image from pokemon where id = '%s';", (str,))
            D = cursor.execute(string)
            d = cursor.fetchall()
            d = [item for sublist in d for item in sublist]
    	    PokeBanner.append(d[1])
    	print "Poke Banner: "
    	print PokeBanner
    	
    except Exception as e:
        print(e)
	print("Error executing select")

    return render_template('about.html', PokeBanner=PokeBanner, loggedIn=session['loggedIn'], user=session['username'])
    
@app.route('/register')
def register():
  return render_template('register.html')
    
@app.route('/register', methods=['POST'])
def register2():
    results=[]
    connection = connectToDB()
    cursor = connection.cursor(cursor_factory=psycopg2.extras.DictCursor)
        
    userTaken = False
    passCheck = False
    
    query = cursor.mogrify("select * from users WHERE username = %s", (request.form['userName'], ))
    cursor.execute(query)
    userresults = cursor.rowcount
    connection.commit()
    
    if(userresults != 0):
           userTaken = True
           print("Username already taken")
           return render_template('register.html', userUsed = userTaken)
           
    elif(request.form['pw'] != request.form['checkpw']):
         passCheck = True
         print("Passwords do not match")
         return render_template('register.html', passFail = passCheck)
    else:
        try:
              mog=cursor.mogrify("INSERT INTO users (username, password) VALUES (%s, crypt(%s, gen_salt('bf')));" , 
                  (request.form['userName'], request.form['pw']) )
              print(mog)
              cursor.execute("INSERT INTO users (username, password) VALUES (%s, crypt(%s, gen_salt('bf')));" , 
                  (request.form['userName'], request.form['pw']) )
        except:
            print("Error inserting into users table!")
            print("Tried: INSERT INTO users (username, password) VALUES (%s, %s);" , 
                  (request.form['userName'], request.form['pw']) )
            connection.rollback()
        connection.commit()
          
        try:
                cursor.execute("select * from users;")
        except:
                print("Error executing select")
        results=cursor.fetchall()
        return redirect(url_for('mainIndex'))

            
    if 'username' in session:
      user = [session['username']]
    else:
      user = ['']
    return render_template('register.html', selectedMenu='Register', users = results, loggedIn=session['loggedIn'], user=session['username'])

@app.route('/results', methods=['GET', 'POST'])
def showResults():
    session['searchedString'] = request.form['search']
    session['resultsOfSearch'] = []
    connection = connectToDB()
    cursor = connection.cursor(cursor_factory=psycopg2.extras.DictCursor)
    rows = []
    typeEffective = []
    #format the string so that it matches the format of names in the db
    try: 
        session['searchedString'] = session['searchedString'].capitalize()
    except:
        print('Cannot capitalize')
    
    #search for name
    query = cursor.mogrify("SELECT name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into from pokemon where name = %s", (session['searchedString'],))
    cursor.execute(query)
    rows = cursor.fetchall()
    print rows
    if not rows:
        print("test")
        
        #Format for searching for type
        try: 
            session['searchedString'] = session['searchedString'].lower()
        except:
            print('Cannot capitalize')
        query = cursor.mogrify("Select name, image, weight, height, male, female, hp, attack, defense, sp_attack, sp_defense, speed, total_rating, evolves_into from pokemon p1, types t1 where p1.id = t1.poke_ID and t1.type_ID = (SELECT ID from PossibleTypes where nameoftype = %s);", (session['searchedString'],))
        cursor.execute(query)
        rows = cursor.fetchall()
        if not rows:
           print("There are no rows!")
        else:
            session['resultsOfSearch'] = rows
            str = cursor.mogrify("SELECT nameoftype from PossibleTypes where ID IN (SELECT other_id from typeEffective where id IN (SELECT ID from PossibleTypes where nameoftype = %s));", (session['searchedString'],))
            cursor.execute(str)
            allTypeEffective = cursor.fetchall()
            typeEffective = [item for sublist in allTypeEffective for item in sublist]
            for i in range(len(typeEffective)):
                try: 
                    typeEffective[i] = typeEffective[i].capitalize()
                except:
                    print('Cannot capitalize')
                    print(i)
            print(typeEffective)
        
    else:
        session['resultsOfSearch'] = rows
        string = cursor.mogrify("SELECT nameoftype from PossibleTypes where ID IN (SELECT other_id from typeEffective where id IN (SELECT type_ID from types where poke_ID IN (SELECT ID from pokemon where name = %s)));", (session['searchedString'],))
        cursor.execute(string)
        typeEffective = cursor.fetchall()
        typeEffective = [item for sublist in typeEffective for item in sublist]
        for i in range(len(typeEffective)):
            try: 
                typeEffective[i] = typeEffective[i].capitalize()
            except:
                print('Cannot capitalize')
                print(i)
        print(typeEffective)
        
    return render_template('searchResults.html',
                            typeEffective=typeEffective,
                            loggedIn=session['loggedIn'], 
                            user=session['username'], 
                            resultsOfSearch = session['resultsOfSearch'],
                            searchedString = session['searchedString'])

# start the server
if __name__ == '__main__':
    socketio.run(app, host=os.getenv('IP', '0.0.0.0'), port =int(os.getenv('PORT', 8080)), debug=True)