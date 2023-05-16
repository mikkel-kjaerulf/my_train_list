from flask import Flask, render_template
import psycopg2

app = Flask(__name__)

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

if __name__ == '__main__':
    app.run()
