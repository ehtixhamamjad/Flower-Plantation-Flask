from flask import Flask, request, render_template, redirect
from flask_mysqldb import MySQL

app = Flask(__name__, template_folder='templates')
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'flowerplantation'
mysql = MySQL(app)

def usersignupform():
    if request.method == 'POST':
        # Assign form values directly
        name = request.form.get('name')
        phone = request.form.get('phone')
        area = request.form.get('area')
        email = request.form.get('email')
        password = request.form.get('password')

        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO user (name, phone, area, email, password) VALUES (%s, %s, %s, %s, %s)",
                    (name, phone, area, email, password))
        mysql.connection.commit()
        cur.close()
        return render_template("login.html", success_message="Successfully SignUp.")
    else:
        return render_template("signup.html")

@app.route('/signup', methods=['GET', 'POST'])
def signup():
    if request.method == 'POST':
        return usersignupform()
    return render_template("signup.html")

if __name__ == "__main__":
    app.run(debug=True)
