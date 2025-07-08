from bottle import Bottle, request, template, run

application = Bottle()

@application.route("/", method=["GET", "POST"])
def home():
    if request.method == "POST":
        num_str = request.forms.get("num")
        try:
            num = int(num_str)
            if num % 2 == 0:
                msg = "even"
            else:
                msg = "odd"
        except (TypeError, ValueError):
            num = ""
            msg = "Invalid input. Please enter a number."
    else:
        num = ""
        msg = ""
    
    return template("home", msg=msg, num=num)

#run(application, host="localhost", port=4050, debug=True, reloader=True)
