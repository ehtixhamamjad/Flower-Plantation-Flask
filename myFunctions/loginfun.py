from flask import Flask, request, render_template, session, redirect
import mysql.connector

app = Flask(__name__)
app.secret_key = 'your_secret_key'

@app.route('/login', methods=['POST', 'GET'])
def login():
    if request.method == 'POST':
        return addlogin()
    else:
        # Handle GET request
        # For example, render the login form
        return render_template("login.html")

def addlogin():
    email = request.form.get('email')
    password = request.form.get('password')
    
    try:
        conn = mysql.connector.connect(
            host="localhost",
            user="root",
            password="",
            database="flowerplantation"
        )
        cur = conn.cursor()
     
        query = "SELECT id FROM user WHERE email = %s AND password = %s"
        cur.execute(query, (email, password))
        
        user_data = cur.fetchone()  # Fetch one row
        
        if user_data:  # If user exists (valid credentials)
            session['id'] = user_data[0]  # Accessing the 'id' column value
            cur.close()
            conn.close()
            return redirect('/user')  # Corrected redirect URL
        else:  
            cur.close()
            conn.close()
            return render_template("login.html")  # Corrected render template path
    except mysql.connector.Error as err:
        print("Error:", err)
        # Handle the error appropriately, e.g., render an error page
        return render_template("error.html", message="An error occurred while processing your request.")
