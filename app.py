from flask import Flask, render_template, request
#from flask_login import LoginManager
#from flask_bcrypt import Bcrypt

import psycopg2

app = Flask(__name__)
#bcrypt = Bcrypt(app)
#login_manager = LoginManager(app)
#login_manager.login_view = 'login'


# Configure the database connection
def get_db_connection():
    connection = psycopg2.connect(
        port=5432,
        host="localhost",
        database="postgres",
        user="postgres",
        password="2903"
    )
    return connection

#@app.route('/login', methods=['GET', 'POST'])
#def login():


# Example route to fetch data from the database
@app.route('/')
def index():
    connection = get_db_connection()
    cursor = connection.cursor()
    
    # Execute a query
    cursor.execute('SELECT * FROM trains')
    
    # Fetch the results
    results = cursor.fetchall()

    # Close the cursor and connection
    cursor.close()
    connection.close()
    
    # Process the results and return the response
    response = ''
    for row in results:
        response += f'Train ID: {row[0]}, Train Name: {row[1]}<br>'
    
    return response

@app.route('/table')
def render_table():
    # Establish a connection to the PostgreSQL database
    conn = get_db_connection()
    cursor = conn.cursor()

    # Execute a query to retrieve data from the table
    cursor.execute('SELECT * FROM trains')

    # Fetch all rows from the result set
    rows = cursor.fetchall()



    # get the header
    headers = [desc[0] for desc in cursor.description]

    # Close the cursor and connection
    cursor.close()
    conn.close()

    # Render the HTML template with the table data
    return render_template('table.html', rows=rows, headers=headers, column_with_image_index=11)

@app.route('/signup', methods=["GET", "POST"])
def signup():
    if request.method == "POST":
        # Establish a connection to the PostgreSQL database
        conn = get_db_connection()
        cursor = conn.cursor()

        # Get max uid and add 1 to get new id for user
        cursor.execute("SELECT MAX(id) FROM users;")
        uid = cursor.fetchall()[0][0] + 1
        # Get other input 
        name = request.form.get("fname")
        mail = request.form.get("femail")
        password = request.form.get("fpassword")
        query = "INSERT INTO users (id, name, mail, password) VALUES (%s, %s, %s, %s);"
        cursor.execute(query, (uid, name, mail, password))
        conn.commit()
        cursor.close()
        conn.close()
    return render_template('signup.html')

@app.route('/train/<name>')
def train_view(name):
    # Establish a connection to the PostgreSQL database
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM trains WHERE trains.\"('Name', 'Name')\" = '%s';" % (name) )    
    row = cursor.fetchall()
    train_name = row[0][1]
    train_operator = row[0][2]
    train_family = row[0][3]
    train_manufacturer = row[0][4]
    train_power_supply = row[0][5]
    train_max_speed_op = row[0][6]
    train_max_speed_d = row[0][7]
    train_max_speed_rec = row[0][8]
    train_in_service = row[0][9]
    train_picture = row[0][10]
    cursor.close()
    conn.close()

    return render_template(
        'trainview.html', 
        name = train_name, 
        operator = train_operator,
        family = train_family,
        manufacturer = train_manufacturer,
        power_supplu = train_power_supply,
        max_speed_op = train_max_speed_op,
        max_speed_d = train_max_speed_d,
        max_speed_rec = train_max_speed_rec,
        in_service = train_in_service,
        picture = train_picture)

if __name__ == '__main__':
    app.run()
