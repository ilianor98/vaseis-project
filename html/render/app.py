from flask import Flask, render_template, request, redirect, url_for
import pymysql

app = Flask(__name__)


@app.route('/')
def index():
    # Connect to the database
    conn = pymysql.connect(
        host='localhost',
        user='root',
        password='2403',
        db='vaseistest',
        charset='utf8mb4',
        cursorclass=pymysql.cursors.DictCursor
    )

    # Execute the query to retrieve data from the database
    with conn.cursor() as cursor:
        sql = 'SELECT * FROM user'
        cursor.execute(sql)
        data = cursor.fetchall()

    # Close the database connection
    conn.close()

    # Render the HTML template and pass the data to it
    return render_template('index.html', data=data)

# expretiment


@app.route('/student')
def about():
    # Connect to the database
    conn = pymysql.connect(
        host='localhost',
        user='root',
        password='2403',
        db='vaseistest',
        charset='utf8mb4',
        cursorclass=pymysql.cursors.DictCursor
    )

    # Execute the query to retrieve data from the database
    with conn.cursor() as cursor:
        sql = 'SELECT * FROM student'
        cursor.execute(sql)
        data = cursor.fetchall()

    # Close the database connection
    conn.close()
    return render_template('student.html', data=data)


@app.route('/login', methods=['POST'])
def login():
    db = pymysql.connect(host='localhost', user='username',
                         password='password', database='vaseistest')
    # Get username and password from form submission
    username = request.form['username']
    password = request.form['password']

    # Query database for user
    cursor = db.cursor()
    query = "SELECT * FROM user WHERE username = %s AND password = %s"
    cursor.execute(query, (username, password))
    result = cursor.fetchone()

    if result:
        # If user exists, redirect to home page
        return redirect(url_for('/'))
    else:
        # If user does not exist, redirect back to login page with error message
        return redirect(url_for('index', error='Invalid username or password'))
