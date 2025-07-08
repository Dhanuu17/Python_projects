from bottle import *

application = Bottle()

@application.route("/")
def home():
	return template("home")
run(application,debug = True,reloader =True)