from bottle import *
from datetime import *

application = Bottle()

@application.route("/", method=["POST", "GET"])
def home():
    if request.method == "POST":
        name = request.forms.get("name")
        dt = datetime.now()
        hr = dt.hour
        msg = ""
        if hr < 12:
            msg = "Good Morning " + name
        elif hr < 16:
            msg = "Good Afternoon " + name
        else:
            msg = "Good Evening " + name
        return template("home", msg=msg)
    else:
        return template("home", msg="")

run(application, host="localhost", port=4050, debug=True, reloader=True)