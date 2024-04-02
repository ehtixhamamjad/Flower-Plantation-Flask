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

# Route to handle form submission and add flower data to the database
@app.route('/add_flower', methods=['POST'])
def addFlowerfun():
    if request.method == 'POST':
        
            # Get form data
            
            flower_image=request.files['flower_image']
            flower_image.save('static/images/'+flower_image.filename)
            flower_image_name=flower_image.filename
            flower_name = request.form['flower_name']
            flower_information = request.form['flowerInformation']
            color = request.form['color']
            season = request.form['season']
            category = request.form['category']
            altitude = request.form['altitude']
            height = request.form['height']
            area = request.form['area']
            grow_time = request.form['growtime']
            pesticide = request.form['pesticide']
            fertilizer = request.form['fertilizer']
            disease = request.form['disease']
            fragrance = request.form['fragrance']
            shape = request.form['shape']
            sunlight = request.form['sunlight']
            watering = request.form['watering']

            # Establish database connection
            connection = get_database_connection()
            
            # Create cursor object
            cursor = connection.cursor()
            
            # Define SQL query to insert data into flower_plan table
            query = """INSERT INTO flower 
                       (flower_image_name,flower_name, flower_information, color, season, category, altitude, height, area,  grow_time, pesticide, fertilizer, disease, fragrance, shape, sunlight, watering) 
                       VALUES (%s,%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"""
            
            # Execute SQL query with form data
            cursor.execute(query, (flower_image_name,flower_name, flower_information, color, season, category, altitude, height, area, grow_time, pesticide, fertilizer, disease, fragrance, shape, sunlight, watering))
            
            # Commit changes to the database
            connection.commit()
            return render_template("nursery/flowers.html")
    
    else:
        # Render the add-flower template if the request method is not POST
        return render_template("nursery/add-flower.html")
