# for run this program search app.py in cmd and then type domain or port no on google

from bottle import *

application = Bottle()

@application.route("/", method=["GET", "POST"])
def home():
    if request.method == "POST":
        num = int(request.forms.get("num"))
        if num % 2 == 0:
            msg = "even"
        else:
            msg = "odd"
        return template("home", msg=msg)
    else:
        return template("home", msg="")

run(application, host="localhost", port=4050, debug=True, reloader=True)