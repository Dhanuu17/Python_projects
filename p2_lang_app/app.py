from bottle import Bottle, request, template, run
from sqlite3 import connect

# Set up the database
def set_up():
    print("Setting up the database...")
    con = connect("language.db")
    sql = "CREATE TABLE IF NOT EXISTS student(name TEXT, lang TEXT)"
    cursor = con.cursor()
    cursor.execute(sql)
    con.commit()
    con.close()
    print("Database setup complete.")

# Set up the database when the script runs
set_up()

# Initialize the Bottle application
application = Bottle()

# Define the route for the home page
@application.route("/", method=["GET", "POST"])
def home():
    if request.method == "POST":
        print("Form submitted")
        name = request.forms.get("name")
        py = request.forms.get("py")
        ja = request.forms.get("ja")
        js = request.forms.get("js")
        lang = ""

        # Collect the languages based on checked checkboxes
        if py:
            lang += "Python "
        if ja:
            lang += "Java "
        if js:
            lang += "JavaScript "

        # Insert the data into the database
        con = connect("language.db")
        sql = "INSERT INTO student(name, lang) VALUES(?, ?)"
        cursor = con.cursor()
        cursor.execute(sql, (name, lang))
        con.commit()
        con.close()

        return template("home", msg="Languages noted: " + lang)
    else:
        return template("home", msg="")

# Run the app on localhost:4051
print("Starting the server...")
#run(application, host="localhost", port=4051, debug=True, reloader=True)
