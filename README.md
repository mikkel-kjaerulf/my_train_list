## MyTrainList Flask Web Application

This is a Flask web application that requires an SQL database and a configuration file.

### Setup Instructions
   If you have Docker-Compose installed, initializing this webserver is a two-liner. Navigate to the root folder of this repository, and run:
   ```
   sudo docker compose build
   ```
   ```
   sudo docker-compose up -d
   ```
   If you dont have Docker-Compose, please follow the following instructions.


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

2. Set up your SQL database: Before starting the Flask app, you need to import the `/services/web/train_list.sql` file into your SQL server. The specific steps depend on the database management system (DBMS) you're using. For example, if you're using PostgreSQL you can use the `psql` command-line tool to import the SQL file:
   ```
   pysql -U <username> <database_name> < <path_to_train_list.sql>
   ```
   Replace `<username>` with your PostgreSQL username, `<database_name>` with the name of your database, and `train_list.sql` with the appropriate path to the SQL file.

3. Edit the configuration file `config.ini` in the `/services/web/project` folder and provide the necessary SQL database information in it.
  
4. Run the Flask app: To start your Flask app, run the `/services/web/project/__init__.py` file:
   ```
   python /services/web/project/__init__.py
   ```
   Flask will start a local server, and you can access your web application by visiting the provided URL (usually http://localhost:5000).
   
 ### ER-Diagram for the database:
 ![image](https://github.com/mikkel-kjaerulf/my_train_list/assets/24521077/b3c949d7-9f6b-43ef-a246-3cf6593bffc9)
 
 ### Images
![image](https://github.com/mikkel-kjaerulf/my_train_list/assets/24521077/5a12c5fd-8f13-4318-833e-26a65c3c3ac4)
![image](https://github.com/mikkel-kjaerulf/my_train_list/assets/24521077/6bc2c031-0a48-4a6a-9745-d63cce46dc30)
![image](https://github.com/mikkel-kjaerulf/my_train_list/assets/24521077/dbf234f5-02de-4fab-b1be-5f4ff8658a7d)


