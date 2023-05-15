from flask import Flask, render_template, request, redirect, url_for, session, flash
import pymysql

app = Flask(__name__)

# Set the secret key for the app
app.secret_key = 'your_secret_key_here'


@app.route('/')
def index():
    # Check if the user is logged in
    if 'username' in session:
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
    else:
        return redirect(url_for('login'))


@app.route('/student')
def about():
    # Check if the user is logged in
    if 'username' in session:
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
    else:
        return redirect(url_for('login'))


@app.route('/login', methods=['GET', 'POST'])
def login():
    # Check if the user is already logged in
    if 'username' in session:
        return redirect(url_for('index'))

    if request.method == 'POST':
        # Connect to the database
        conn = pymysql.connect(
            host='localhost',
            user='root',
            password='2403',
            db='vaseistest',
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
            # If user exists, store username in session and redirect to home page
            session['username'] = username
            return redirect(url_for('index'))
        else:
            # If user does not exist, redirect back to login page with error message
            return render_template('login.html', error='Invalid username or password')
    else:
        return render_template('login.html')


@app.route('/logout', methods=['GET', 'POST'])
def logout():
    session.pop('username', None)
    flash('You were logged out')
    return redirect(url_for('login'))


@app.route('/rent')
def rent():
    return render_template('rent.html')


@app.route('/rate')
def rate():
    return render_template('rate.html')


@app.route('/school')
def school():
    return render_template('school.html')


if __name__ == '__main__':
    app.run(debug=True)
