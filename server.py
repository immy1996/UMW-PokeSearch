from flask import Flask, render_template, request, redirect, url_for
import psycopg2, psycopg2.extras, os
app = Flask(__name__)
import psycopg2, psycopg2.extras, os
import uuid
from flask import Flask, render_template, request, redirect, url_for, session
from flask.ext.socketio import SocketIO, emit

app = Flask(__name__, static_url_path='')
app.config['SECRET_KEY'] = 'secret!'


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


#This was from attempt at pop up search
#@socketio.on('send', namespace = '/pokemonsearch')
#def submit_search(search):
#    session['searchedString'] = search
#    session['resultsOfSearch'] = []
#    connection = connectToDB()
#    cursor = connection.cursor(cursor_factory=psycopg2.extras.DictCursor)
#    rows = []
#    query = cursor.mogrify("SELECT * from pokemon where name = %s", (search,))
#    cursor.execute(query)
#    rows = cursor.fetchall()
#    print("query " + query)
#    print(rows)
#    if not rows:
#        print("test")
#        query = cursor.mogrify("Select name, weight, height, male, female from pokemon p1, types t1 where p1.id = t1.poke_ID and t1.type_ID = (SELECT ID from PossibleTypes where nameoftype = %s);", (search,))
#        cursor.execute(query)
#        rows = cursor.fetchall()
#        print("query" + query)
#        print(rows)
#        if not rows:
#           print("There are no rows!")
#        else:
#            session['resultsOfSearch'] = rows
#            print('in redirect')
#            return redirect(url_for('showResults'))
#    else:
#        session['resultsOfSearch'] = rows
#        print('in redirect')
#        return redirect(url_for('showResults'))

@app.route('/',  methods=['GET', 'POST'])
def mainIndex():
    connection = connectToDB()
    cursor = connection.cursor(cursor_factory=psycopg2.extras.DictCursor)
    try:
        print('User: ' + session['username'])
    except:
        session['username'] = ''
        
    pikachurows = ''
    ninerows = ""
    squirtlerows = ""
    magmarrows = ""
    
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
    try:
        pikachu = cursor.execute("SELECT * from pokemon where name = 'Pikachu';")
        pikachurows = cursor.fetchall()
        
        ninetails = cursor.execute("SELECT * from pokemon where name = 'Ninetails';")
        ninerows = cursor.fetchall()
        
        squirtle = cursor.execute("SELECT * from pokemon where name = 'Squirtle';")
        squirtlerows = cursor.fetchall()
        
        magmar = cursor.execute("SELECT * from pokemon where name = 'Magmar';")
        magmarrows = cursor.fetchall()
    except:
        print("Error executing select")
 
    return render_template('home.html', pikachurows=pikachurows, ninerows=ninerows, squirtlerows=squirtlerows, magmarrows=magmarrows, loggedIn=session['loggedIn'], user=session['username'])
   
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

    return render_template('about.html', loggedIn=session['loggedIn'], user=session['username'])
    
@app.route('/register', methods=['GET', 'POST'])
def register():
    results=[]
    connection = connectToDB()
    cursor = connection.cursor(cursor_factory=psycopg2.extras.DictCursor)

    if request.method == "POST":
        # if request.form['password']!=request.form['checkpassword']:
        #     print("Password does not match. Please re-enter!")
        # else:
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
              
    else:
    # if user typed in a post ...
   # userLogin = request.form['Login']
    #if userLogin==True:
        if request.method == 'POST':
          session['username'] = request.form['username']
        
          pw = request.form['pw']
          cursor.execute("select * from users WHERE username = %s AND password = %s;" , (session['username'], pw))
          if cursor.fetchone():
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
    #format the string so that it matches the format of names in the db
    try: 
        session['searchedString'] = session['searchedString'].capitalize()
    except:
        print('Cannot capitalize')
    
    #search for name
    query = cursor.mogrify("SELECT name, weight, height, male, female from pokemon where name = %s", (session['searchedString'],))
    cursor.execute(query)
    rows = cursor.fetchall()
    print("query " + query)
    print(rows)
    if not rows:
        print("test")
        
        #Format for searching for type
        try: 
            session['searchedString'] = session['searchedString'].lower()
        except:
            print('Cannot capitalize')
        query = cursor.mogrify("Select name, weight, height, male, female from pokemon p1, types t1 where p1.id = t1.poke_ID and t1.type_ID = (SELECT ID from PossibleTypes where nameoftype = %s);", (session['searchedString'],))
        cursor.execute(query)
        rows = cursor.fetchall()
        print("query" + query)
        print(rows)
        if not rows:
           print("There are no rows!")
        else:
            session['resultsOfSearch'] = rows
    else:
        session['resultsOfSearch'] = rows
    return render_template('searchResults.html', 
                            loggedIn=session['loggedIn'], 
                            user=session['username'], 
                            resultsOfSearch = session['resultsOfSearch'],
                            searchedString = session['searchedString'])

# start the server
if __name__ == '__main__':
    socketio.run(app, host=os.getenv('IP', '0.0.0.0'), port =int(os.getenv('PORT', 8080)), debug=True)
    #app.debug=True
    #app.run(host='0.0.0.0', port=8080)