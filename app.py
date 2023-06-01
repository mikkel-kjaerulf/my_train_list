from flask import Flask, render_template, request, redirect, url_for, flash, jsonify
from flask_login import LoginManager
from psycopg2 import sql
from flask_sqlalchemy import SQLAlchemy
from flask_login import UserMixin, login_user, logout_user, login_required, current_user
import psycopg2

app = Flask(__name__)
app.config['SECRET_KEY'] = 'trust me bro'
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://postgres:2903@localhost:5432/postgres'
db = SQLAlchemy(app)
login_manager = LoginManager(app)
login_manager.login_view = 'login'


class User(db.Model, UserMixin):
    __tablename__ = 'users'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(255))
    mail = db.Column(db.String(255), unique=True)
    password = db.Column(db.String(255))


@login_manager.user_loader
def load_user(user_id):
    return User.query.get(int(user_id))

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

@app.route('/login', methods=['GET', 'POST'])
def login():
    if current_user.is_authenticated:
        return redirect('/')  # Redirect to another page (e.g., dashboard) if user is already logged in
    
    if request.method == 'POST':
        mail = request.form['mail']
        password = request.form['password']
        user = User.query.filter_by(mail=mail).first()
        if user and user.password == password:
            login_user(user)
            return jsonify({'redirect': True})  # Return JSON response for successful login
        else:
            return jsonify({'redirect': False, 'message': 'Invalid mail or password'})  # Return JSON response for unsuccessful login
    return render_template('login.html')

@app.route('/logout')
@login_required
def logout():
    logout_user()
    return redirect('/')


@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        search_query = request.form.get('search')
        return redirect(url_for('search', query=search_query))


    # get the trains ordered by rating
    connection = get_db_connection()
    cursor = connection.cursor()
    cursor.execute(f"SELECT name, operators, family, picture, round AS rating FROM trains AS t LEFT JOIN (SELECT r.tid, ROUND(AVG(r.rating),2), COUNT(r.rating) FROM reviews r GROUP BY r.tid) AS r ON t.id = r.tid ORDER BY r.round DESC nulls last;")
    results = cursor.fetchall()
    cursor.close()
    connection.close()    

    # get the header
    headers = [desc[0] for desc in cursor.description]

    return render_template('index.html', rows=results, headers=headers, column_with_image_index=3, column_with_train_name_index=0)

@app.route('/search')
def search():
    query = request.args.get('query')
    
    # Perform search in the database based on the query
    connection = get_db_connection()
    cursor = connection.cursor()
    cursor.execute(f"SELECT * FROM trains WHERE name ILIKE '%{query}%'")
    results = cursor.fetchall()
    cursor.close()
    connection.close()

    # get the header
    headers = [desc[0] for desc in cursor.description]
    
    return render_template('search.html', results=results, headers=headers, column_with_image_index=10, column_with_train_name_index=1)

@app.route('/table')
def render_table():
    # Establish a connection to the PostgreSQL database
    conn = get_db_connection()
    cursor = conn.cursor()

    # Get the sorting option from the request parameters
    sort_option = request.args.get('sort', 'default')

    # Build the SQL query with the sorting option
    if sort_option == 'train_name':
        query = 'SELECT * FROM trains ORDER BY name'
    elif sort_option == 'max_op_speed':
        query = 'SELECT * FROM trains ORDER BY max_speed_operational DESC NULLS LAST'
    elif sort_option == 'max_design_speed':
        query = 'SELECT * FROM trains ORDER BY max_speed_design DESC NULLS LAST'
    elif sort_option == 'max_speed_record':
        query = 'SELECT * FROM trains ORDER BY max_speed_record DESC NULLS LAST'
    elif sort_option == 'year_in_service':
        query = 'SELECT * FROM trains ORDER BY in_service DESC NULLS LAST'
    else:
        query = 'SELECT * FROM trains'

    # Execute the SQL query
    cursor.execute(query)
    # Fetch all rows from the result set
    rows = cursor.fetchall()



    # get the header
    headers = [desc[0] for desc in cursor.description]

    # Close the cursor and connection
    cursor.close()
    conn.close()

    # Render the HTML template with the table data
    return render_template('table.html', rows=rows, headers=headers, column_with_image_index=10, column_with_train_name_index=1)

@app.route('/signup', methods=["GET", "POST"])
def signup():
    if current_user.is_authenticated:
        return redirect('/')  # Redirect to another page (e.g., dashboard) if user is already logged in
    if request.method == "POST":
        # Establish a connection to the PostgreSQL database
        conn = get_db_connection()
        cursor = conn.cursor()

        # Get input data
        name = request.form.get("fname")
        mail = request.form.get("femail")
        password = request.form.get("fpassword")

        # Check if email already exists in the database
        cursor.execute("SELECT * FROM users WHERE mail = %s", (mail,))
        existing_user = cursor.fetchone()

        if existing_user:
            # Display popup message if email already exists
            return jsonify({'redirect': False, 'message': 'Email already used'})
        
        # Insert new user into the database
        # Get max uid and add 1 to get new id for user
        cursor.execute("SELECT MAX(id) FROM users;")
        uid = cursor.fetchall()[0][0] + 1
        cursor.execute("INSERT INTO users (id, name, mail, password) VALUES (%s, %s, %s, %s)", (uid, name, mail, password))
        conn.commit()
        cursor.close()
        conn.close()
        
        login_user(User.query.filter_by(mail=mail).first())
        # Redirect to a success page or perform any other action
        return jsonify({'redirect': True})

    return render_template('signup.html')

@app.route('/train/<name>', methods=["GET", "POST"])
def train_view(name):
    # Establish a connection to the PostgreSQL database
    conn = get_db_connection()
    cursor = conn.cursor()

    # get train info
    cursor.execute("SELECT * FROM trains WHERE trains.name = '%s';" % (name) )    
    row = cursor.fetchall()
    train_id = row[0][0]
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

    # get the reviews
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute("SELECT u.name, r.rating, r.comment FROM users u RIGHT JOIN reviews r ON r.uid = u.id WHERE r.tid = %s;" % (train_id) )
    reviews = cursor.fetchall()
    usernames = [review[0] for review in reviews]
    ratings = [review[1] for review in reviews]
    comments = [review[2] for review in reviews]

    # get average rating of the train
    query = sql.SQL("""SELECT ROUND(AVG(rating),2) FROM reviews WHERE tid = %s;""").format()
    cursor.execute(query, [train_id])
    avg_rating = cursor.fetchall()[0][0]
    cursor.close()
    conn.close()

    # We need to do something about this method to not allow users to a review multiple times on the same train
    # otherwise we get an error
    if request.method == "POST":
        if not current_user.is_authenticated:
            return redirect('/signup')
        conn = get_db_connection()
        cursor = conn.cursor()

        # get typed comment and rating
        comment = request.form.get("freviewtext")
        rating = request.form.get('fscore')

        # check if user has already left a review for this train
        query = sql.SQL("""SELECT COUNT(1) FROM reviews WHERE tid = %s AND uid = %s;""")
        cursor.execute(query, [train_id, current_user.get_id()])
        res = cursor.fetchall()[0][0]

        # if user has not left a review, insert into table
        if (res == 0):
            query = sql.SQL("""INSERT INTO reviews (uid, tid, rating, comment) VALUES (%s, %s, %s, %s)""").format()
            cursor.execute(query, (current_user.get_id(), train_id, rating, comment))
            conn.commit()
        # if user has left a review, update it
        else:   
            query = sql.SQL("""UPDATE reviews SET rating = %s, comment = %s WHERE tid = %s AND uid = %s;""").format()
            cursor.execute(query, (rating, comment, train_id, current_user.get_id()))     
            conn.commit()
        
        cursor.close()
        conn.close()

        # redirect to the same page to update the reviews
        return redirect(url_for('train_view', name=name))

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
        picture = train_picture,
        usernames = usernames,
        ratings = ratings,
        comments = comments,
        avg_rating = avg_rating)

if __name__ == '__main__':
    app.run(debug = True)
