from flask import Flask, render_template
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


@app.route('/about')
def about():
    return render_template('about.html')
