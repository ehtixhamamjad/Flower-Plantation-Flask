
from flask import Flask, render_template, request, redirect, url_for
from flask_mysqldb import MySQL

app = Flask(__name__)
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'flowerplantation'

mysql = MySQL(app)

# Function to establish database connection
def get_database_connection():
    return mysql.connection
def userAddPlanFun():
    if request.method == 'POST':

        # Assign form values directly
        flowerName = request.form.get('flowerName')
        season = request.form.get('season')
        flowerVarieties = request.form.get('flowerVarieties')
        budgetAllocation = request.form.get('budgetAllocation')
        startDate = request.form.get('startDate')
        endDate = request.form.get('endDate')
        location = request.form.get('location')
        notes = request.form.get('notes')

        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO flower_plan (user_id, flower_name, season, flower_varieties, budget_allocation, start_date, end_date, location, notes) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)", (1, flowerName, season, flowerVarieties, budgetAllocation, startDate, endDate, location, notes))
        mysql.connection.commit()
        cur.close()
        return render_template("user/plan.html", success_message="Flower Plan successfully inserted.")
    else:
        return render_template("user/add-plan.html")