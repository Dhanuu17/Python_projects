from bottle import *
import requests

application = Bottle()

@application.route("/", method=["GET", "POST"])
def home():
    if request.method == "POST":
        aid = float(request.forms.get("aid"))
        url = "https://api.exchangerate-api.com/v4/latest/USD"
        res = requests.get(url)
        data = res.json()
        dollar = data["rates"]["INR"]
        air = aid * dollar
        msg = "₹" + str(round(air, 2))
        return template("home", msg=msg, aid=aid)
    else:
        return template("home", msg="", aid="")

#run(application, host="localhost", port=4050, debug=True, reloader=True)