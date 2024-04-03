from flask import Flask, request, render_template, redirect
from flask_mysqldb import MySQL

app = Flask(__name__, template_folder='templates')
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'flowerplantation'
mysql = MySQL(app)

def nurserysignupform():
    if request.method == 'POST':
        # Assign form values directly
        name = request.form.get('name')
        address = request.form.get('address')
        city = request.form.get('city')
        zip = request.form.get('zip')
        country = request.form.get('country')
        phone = request.form.get('phone')
        email = request.form.get('email')
        password = request.form.get('password')

        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO nursery_owner (name, address, city, zip,country,phone,email,password) VALUES (%s, %s, %s,%s, %s, %s,%s, %s)",
                    (name,address, city,zip,country,phone,email,password))
        mysql.connection.commit()
        cur.close()
        return render_template("nursery/index.html", success_message="Successfully SignUp.")
    else:
        return render_template("nursery/signup.html")

@app.route('/nursery/signup', methods=['GET', 'POST'])
def signup():
    if request.method == 'POST':
        return nurserysignupform()
    return render_template("nursery/signup.html")

if __name__ == "__main__":
    app.run(debug=True)
