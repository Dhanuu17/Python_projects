from bottle import *
from sqlite3 import *
from hashlib import md5

# Password encryption using MD5
def encrypt(pw):
    return md5(pw.encode()).hexdigest()

# Create the database and users table
def set_up():
    con = connect("auth.db")
    sql = "CREATE TABLE IF NOT EXISTS users(un TEXT PRIMARY KEY, pw TEXT)"
    con.execute(sql)
    con.commit()
    con.close()

set_up()

application = Bottle()

# Route: Login
@application.route("/", method=["GET", "POST"])
def login():
    if request.method == "POST":
        un = request.forms.get("un")
        pw = request.forms.get("pw")
        con = connect("auth.db")
        cursor = con.cursor()
        cursor.execute("SELECT * FROM users WHERE un=? AND pw=?", (un, encrypt(pw)))
        data = cursor.fetchone()
        con.close()
        if data:
            response.set_cookie("un", un, secret="kamal_sir_rocks")
            redirect("/home")
        else:
            return template("login", msg="Invalid login credentials")
    return template("login", msg="")

# Route: Signup
@application.route("/signup", method=["GET", "POST"])
def signup():
    if request.method == "POST":
        un = request.forms.get("un")
        p1 = request.forms.get("p1")
        p2 = request.forms.get("p2")
        if p1 != p2:
            return template("signup", msg="Passwords do not match")
        try:
            con = connect("auth.db")
            con.execute("INSERT INTO users VALUES (?, ?)", (un, encrypt(p1)))
            con.commit()
            con.close()
            return template("signup", msg="Registration successful!")
        except:
            return template("signup", msg="Username already exists")
    return template("signup", msg="")

# Route: Home (after login)
@application.route("/home")
def home():
    un = request.get_cookie("un", secret="kamal_sir_rocks")
    if not un:
        redirect("/")
    return template("home", msg=un)

# Route: Logout
@application.route("/logout")
def logout():
    response.delete_cookie("un")
    redirect("/")

# Run the Bottle application
#run(application, host="localhost", port=4051, debug=True, reloader=True)
