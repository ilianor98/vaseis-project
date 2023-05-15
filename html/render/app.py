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
        db='vaseistest1',
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

@app.route('/student')
def about():
    # Connect to the database
    conn = pymysql.connect(
        host='localhost',
        user='root',
        password='2403',
        db='vaseistest1',
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

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        # Connect to the database
        conn = pymysql.connect(
            host='localhost',
            user='root',
            password='2403',
            db='vaseistest1',
            charset='utf8mb4',
            cursorclass=pymysql.cursors.DictCursor
        )

        # Get username and password from form submission
        username = request.form['username']
        password = request.form['password']

        # Query database for user
        with conn.cursor() as cursor:
            query = "SELECT * FROM user WHERE username = %s AND password = %s"
            cursor.execute(query, (username, password))
            result = cursor.fetchone()

        # Close the database connection
        conn.close()

        if result:
            # If user exists, redirect to home page
            return redirect(url_for('index'))
        else:
            # If user does not exist, redirect back to login page with error message
            return render_template('login.html', error='Invalid username or password')
    else:
        # render login page
        return render_template('login.html')
