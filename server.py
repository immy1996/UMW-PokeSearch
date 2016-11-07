#from flask import Flask, render_template, request, redirect, url_for
#import psycopg2, psycopg2.extras, os
#app = Flask(__name__)
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

@socketio.on('send', namespace='/pokemonsearch')
def submit_search(search):
    connection = connectToDB()
    cursor = connection.cursor(cursor_factory=psycopg2.extras.DictCursor)
    rows = []
    query = cursor.mogrify("SELECT * from pokemon where name = %s", (search,))
    cursor.execute(query)
    rows = cursor.fetchall()
    print("query " + query)
    print(rows)
    if not rows:
        print("test")
        query = cursor.mogrify("Select name, weight, height, male, female from pokemon p1, types t1 where p1.id = t1.poke_ID and t1.type_ID = (SELECT ID from PossibleTypes where nameoftype = %s);", (search,))
        cursor.execute(query)
        rows = cursor.fetchall()
        print("query" + query)
        print(rows)
        if not rows:
           print("There are no rows!")
        else:
            for row in rows:
                print(row)
                emit('results', {'name' : row['name'], 'weight' : str(row['weight']), 'height' : str(row['height']), 'male' : str(row['male']), 'female' : str(row['female'])})
    else:
        for row in rows:
            print(row) 
            emit('results', {'name' : row['name'], 'weight' : str(row['weight']), 'height' : str(row['height']), 'male' : str(row['male']), 'female' : str(row['female'])})
    

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
 
    return render_template('index.html', pikachurows=pikachurows, ninerows=ninerows, squirtlerows=squirtlerows, magmarrows=magmarrows, loggedIn=session['loggedIn'], user=session['username'])
   
@app.route('/login', methods=['GET', 'POST'])
def login():
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
    return redirect(url_for('mainIndex'))
    
@app.route('/logout', methods=['GET', 'POST'])
def logout():
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
    
# start the server
if __name__ == '__main__':
    socketio.run(app, host=os.getenv('IP', '0.0.0.0'), port =int(os.getenv('PORT', 8080)), debug=True)
    #app.debug=True
    #app.run(host='0.0.0.0', port=8080)