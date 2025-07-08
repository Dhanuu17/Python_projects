from bottle import route, run, request, template
import sqlite3

@route("/", method=["GET", "POST"])
def home():
    msg = ""
    if request.method == "POST":
        name = request.forms.get("name")
        company = request.forms.get("company")
        pkg = request.forms.get("pkg")
        print(f"Received: name={name}, company={company}, pkg={pkg}")  # Debugging line
        
        if name and company and pkg:
            try:
                # Connect to the SQLite database
                con = sqlite3.connect("ss.db")
                cursor = con.cursor()
                
                # Execute the insert statement
                cursor.execute("INSERT INTO student (name, company, pkg) VALUES (?, ?, ?)", (name, company, float(pkg)))
                con.commit()  # Save (commit) the changes
                con.close()   # Close the database connection
                msg = "Congrats! Data inserted."
            except Exception as e:
                msg = f"Error: {e}"
        else:
            msg = "Please fill in all fields."
    
    return template("home", msg=msg)

# Start the Bottle application
run(host='localhost', port=8080, debug=True)
