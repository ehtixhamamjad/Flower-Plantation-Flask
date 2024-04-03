# from flask import Flask, render_template, request, redirect, url_for, send_from_directory
# # from werkzeug.utils import secure_filename
# import os
# # from tensorflow.keras.models import load_model
# # import numpy as np
# # from tensorflow.keras.preprocessing.image import load_img, img_to_array
# # database
# app = Flask(__name__, template_folder='templates')
# from flask_mysqldb import MySQL
# app.config['MYSQL_HOST']='localhost'
# app.config['MYSQL_USER']='root'
# app.config['MYSQL_PASSWORD']=''
# app.config['MYSQL_DB']='flowerPlantation'
# mysql = MySQL(app)

# # @app.route("/usermysql")
# # @app.route('/user/add-plan', methods=['POST'])
# @app.route('/addplan', methods=['POST'])

# def usemysql():
    
#     name = request.form['name']
#     expansionPlans = request.form['expansionPlans'] 
#     newVarieties = request.form['newVarieties'] 
#     budgetAllocation = request.form['budgetAllocation'] 
#     maintenanceSchedule = request.form['maintenanceSchedule'] 
#     trainingEducation = request.form['trainingEducation'] 
#     environmentalConsiderations = request.form['environmentalConsiderations'] 
#     communityEngagement = request.form['communityEngagement'] 
#     specialOccasions = request.form['specialOccasions'] 


    
#     cur=mysql.connection.cursor()
    
    
#     # cur.execute("INSERT INTO userplan (name, expansionPlans,newVarieties,budgetAllocation,maintenanceSchedule,trainingEducation,environmentalConsiderations,communityEngagement,specialOccasions) VALUES (%s, %s,%s, %s,%s, %s,%s, %s,%s, %s)", (name, expansionPlans,newVarieties,budgetAllocation,maintenanceSchedule,trainingEducation,environmentalConsiderations,communityEngagement,specialOccasions)")
#     cur.execute("INSERT INTO userplan (name, expansionPlans, newVarieties, budgetAllocation, maintenanceSchedule, trainingEducation, environmentalConsiderations, communityEngagement, specialOccasions) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)", (name, expansionPlans, newVarieties, budgetAllocation, maintenanceSchedule, trainingEducation, environmentalConsiderations, communityEngagement, specialOccasions))

#     mysql.connection.commit()
#     cur.close()
#     return "Success"

# app.run(debug=True)
# if __name__ == '__main__':
#     app.run(debug=True)
