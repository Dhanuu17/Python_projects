from bottle import *

application = Bottle()

@application.route("/", method=["GET", "POST"])
def home():
    msg = ""
    num = None
    if request.method == "POST":
        try:
            num = float(request.forms.get("num"))
            sqr = num ** 2
            msg = "Square: " + str(round(sqr, 2))
        except Exception as e:
            msg = "Invalid input"
    return template("home", msg=msg, num=num)

run(application, host="localhost", port=4050, debug=True, reloader=True)