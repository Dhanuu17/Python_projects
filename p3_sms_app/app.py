from bottle import Bottle, run, template, request, redirect
import sqlite3

# Database setup function
def set_up():
    con = sqlite3.connect("sms.db")
    sql = "CREATE TABLE IF NOT EXISTS student (rno INTEGER PRIMARY KEY, name TEXT, marks INTEGER)"
    cursor = con.cursor()
    cursor.execute(sql)
    con.commit()
    con.close()

# Call setup to ensure table exists
set_up()

# Create Bottle app instance
application = Bottle()

# Home route - display all records
@application.route("/")
def home():
    con = sqlite3.connect("sms.db")
    sql = "SELECT * FROM student"
    cursor = con.cursor()
    cursor.execute(sql)
    data = cursor.fetchall()
    con.close()
    return template("home", msg=data)

# Create route - add new student
@application.route("/create", method=["GET", "POST"])
def create():
    if request.method == "POST":
        try:
            rno = int(request.forms.get("rno"))
            name = request.forms.get("name")
            marks = int(request.forms.get("marks"))
            con = sqlite3.connect("sms.db")
            sql = "INSERT INTO student VALUES (?, ?, ?)"
            cursor = con.cursor()
            cursor.execute(sql, (rno, name, marks))
            con.commit()
            con.close()
            return template("create", msg="Record created successfully.")
        except Exception as e:
            return template("create", msg="Error: " + str(e))
    else:
        return template("create", msg="")

# Edit route - placeholder
@application.route("/edit", method=["GET", "POST"])
def edit():
    return template("edit", msg="Edit feature coming soon.")

# Delete route
@application.route("/delete/<r:int>")
def delete(r):
    con = sqlite3.connect("sms.db")
    sql = "DELETE FROM student WHERE rno = ?"
    cursor = con.cursor()
    cursor.execute(sql, (r,))
    con.commit()
    con.close()
    redirect("/")

# Run the app
#run(application, host="localhost", port=4050, debug=True, reloader=True)
