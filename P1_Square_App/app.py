from bottle import *

application = Bottle()

@application.route("/", method=["GET","POST"])
def home():
    if request.method == "POST":
        num = float(request.forms.get("num"))
        msg = "Square = " + str(round(num**2, 2))
        return template("home", msg=msg)
    else:
        return template("home", msg="")

@application.route("/about", method=["GET", "POST"])
def about():
    return template("about")

#run(application, host="localhost", port=4050, debug=True, reloader=True)