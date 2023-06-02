## MyTrainList Flask Web Application

This is a Flask web application that requires an SQL database and a configuration file.

### Setup Instructions

1. Install Flask and other dependencies: Make sure you have the dependencies installed in your Python environment. You can install it using `pip` by running:
   ```
   pip install Flask
   ```
   ```
   pip install flask-login
   ```
   ```
   pip install psycopg2
   ```
   ```
   pip install SQLAlchemy
   ```

2. Set up your SQL database: Before starting the Flask app, you need to import the `train_list.sql` file into your SQL server. The specific steps depend on the database management system (DBMS) you're using. For example, if you're using PostgreSQL you can use the `psql` command-line tool to import the SQL file:
   ```
   pysql -U <username> <database_name> < train_list.sql
   ```
   Replace `<username>` with your PostgreSQL username, `<database_name>` with the name of your database, and `train_list.sql` with the appropriate path to the SQL file.

3. Edit the configuration file: In the root folder there is a `config.ini` file and provide the necessary SQL database information in it.
  
4. Run the Flask app: To start your Flask app, run the `app.py` file:
   ```
   python app.py
   ```
   Flask will start a local server, and you can access your web application by visiting the provided URL (usually http://localhost:5000).