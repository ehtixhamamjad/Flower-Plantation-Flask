# from flask import Flask, render_template
# from flask_mysqldb import MySQL

# app = Flask(__name__)

# # MySQL connection configuration
# app.config['MYSQL_HOST'] = 'localhost'
# app.config['MYSQL_USER'] = 'root'
# app.config['MYSQL_PASSWORD'] = ''
# app.config['MYSQL_DB'] = 'flowerplantation'

# mysql = MySQL(app)

# # @app.route('/nursery/flowers', methods=['GET'])
# def get_flower_data():
#     try:
#         cur = mysql.connection.cursor()
#         cur.execute("SELECT flower_name, flower_information, color, season, category, altitude, height, area, grow_time, pesticide, fertilizer, disease, fragrance, shape, sunlight, watering FROM flower")
#         flower_data = cur.fetchall()
#         cur.close()
        
#         if flower_data:
#             return render_template('nursery/flowers.html', flowers=flower_data)
#         else:
#             return render_template('error.html', message='No flower data found.')

#     except Exception as e:
#         print("Error:", e)
#         return render_template('error.html', message='An error occurred while fetching flower data.')

# if __name__ == '__main__':
#     app.run(debug=True)
