from flask import Flask, request, render_template, session, redirect
import mysql.connector

app = Flask(__name__)
app.secret_key = 'your_secret_key'

@app.route('/nurserylogin', methods=['POST'])
def addnurserylogin():
    email = request.form.get('email')
    password = request.form.get('password')
    
    conn = mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="flowerplantation"
    )
    cur = conn.cursor()
 
    query = "SELECT id FROM nursery_owner WHERE email = %s AND password = %s"
    cur.execute(query, (email, password))
    
    # user_data = cur.fetchone()  # Fetch one row
    
    # # Consume remaining results
    # cur.fetchall()
    
    # if user_data:  # If user exists (valid credentials)
    #     session['id'] = user_data[0]  # Accessing the 'id' column value
    #     cur.close()
    #     conn.close()
    #     return redirect('/nursery')
    # else:  
    #     cur.close()
    #     conn.close()
    #     return render_template("/nursery/login.html")
    
    user_data = cur.fetchone()  # Fetch one row

    if user_data:  # If user exists (valid credentials)
        session['id'] = user_data[0]  # Accessing the 'id' column value
        cur.close()
        conn.close()
        return redirect('/nursery')
    else:  
        cur.close()
        conn.close()
        return render_template("login.html")

