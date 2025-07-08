
from bottle import Bottle, run, template, request, redirect, TEMPLATE_PATH
import sqlite3, os

TEMPLATE_PATH.insert(0, os.path.join(os.path.dirname(__file__), 'views'))
app = Bottle()

def init_db():
    con = sqlite3.connect("products.db")
    sql = '''CREATE TABLE IF NOT EXISTS products (
                pid INTEGER PRIMARY KEY,
                name TEXT NOT NULL,
                price INTEGER
            )'''
    con.execute(sql)
    con.commit()
    con.close()

init_db()

@app.route('/')
def home():
    con = sqlite3.connect("products.db")
    cur = con.cursor()
    cur.execute("SELECT * FROM products")
    products = cur.fetchall()
    con.close()
    return template("home", products=products)

@app.route('/create')
def create_form():
    return template("create")

@app.post('/create')
def create_product():
    pid = request.forms.get('pid')
    name = request.forms.get('name')
    price = request.forms.get('price')
    con = sqlite3.connect("products.db")
    cur = con.cursor()
    cur.execute("INSERT INTO products VALUES (?, ?, ?)", (pid, name, price))
    con.commit()
    con.close()
    return redirect('/')

@app.route('/edit/<pid>')
def edit_form(pid):
    con = sqlite3.connect("products.db")
    cur = con.cursor()
    cur.execute("SELECT * FROM products WHERE pid = ?", (pid,))
    product = cur.fetchone()
    con.close()
    return template("edit", product=product)

@app.post('/edit/<pid>')
def edit_product(pid):
    name = request.forms.get('name')
    price = request.forms.get('price')
    con = sqlite3.connect("products.db")
    cur = con.cursor()
    cur.execute("UPDATE products SET name = ?, price = ? WHERE pid = ?", (name, price, pid))
    con.commit()
    con.close()
    return redirect('/')

@app.route('/delete/<pid>')
def delete_product(pid):
    con = sqlite3.connect("products.db")
    cur = con.cursor()
    cur.execute("DELETE FROM products WHERE pid = ?", (pid,))
    con.commit()
    con.close()
    return redirect('/')

@app.route('/search', method='GET')
def search():
    keyword = request.query.get('q')
    con = sqlite3.connect("products.db")
    cur = con.cursor()
    cur.execute("SELECT * FROM products WHERE name LIKE ?", ('%' + keyword + '%',))
    results = cur.fetchall()
    con.close()
    return template("home", products=results)

if __name__ == "__main__":
    run(app, host="localhost", port=8080, debug=True)
