from bottle import *

application = Bottle()

@application.route("/")
def home():
	return template("home")
run(application,host ="localhost",port=4050, debug=True,reloader= True)