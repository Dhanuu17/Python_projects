from bottle import *
from random import choice
application = Bottle()

@application.route("/", method=["GET", "POST"])
def home():
    if request.method == "POST":
        length = int(request.forms.get("length"))
        uc = request.forms.get("uc")
        di = request.forms.get("di")
        sp = request.forms.get("sp")

        text = "abcdefghijklmnopqrstuvwxyz"

        if uc:
            text = text + text.upper()
        if di:
            text = text + "1234567890"
        if sp:
            text = text + "!@#$%^&*(){}:><"

        text = list(text)
        pw = ""
        for i in range(1, length+1, 1):
            pw = pw + choice(text)
        return template("home", msg=pw)
    else:
        return template("home", msg="")

run(application, host="localhost", port=4050, debug=True, reloader=True)
