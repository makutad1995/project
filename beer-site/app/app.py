# third-party imports
from __future__ import print_function
import sys
import MySQLdb
import dbConnect
from flask import Flask, render_template, flash, request, url_for, redirect, session, send_file, send_from_directory, jsonify, abort
from flaskext.mysql import MySQL
from flask_bootstrap import Bootstrap
from flask_wtf import FlaskForm
from functools import wraps
from passlib.hash import sha256_crypt
from MySQLdb import escape_string as thwart
from MySQLdb.constants import FIELD_TYPE
import gc
# local imports
from forms import LoginForm, RegistrationForm, ProductForm, ReviewForm


app = Flask(__name__)
bootstrap = Bootstrap(app)
# Database connection info. Note that this is not a secure connection.
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = 'Daniel7!'
app.config['MYSQL_DATABASE_DB'] = 'site'
app.config['MYSQL_DATABASE_HOST'] = '127.0.0.1'
app.config['SECRET_KEY'] = 'THISISAVERYBIGSECRET'

# define connection function for script use by other python functions
def connection():
    conn = MySQLdb.connect(host = "127.0.0.1", port = 3306, user = "root", password = "Daniel7!", db = "site")
    c = conn.cursor()
    return c, conn

# function for adding a beer to the database
@app.route('/product_register', methods=['GET', 'POST'])
def product_register(): 
    form = ProductForm()
    if request.method == "POST" and form.validate():
        name = form.name.data
        brand = form.brand.data
        style = form.style.data
        abv = form.abv.data
        ibu = form.ibu.data
        estcal = form.estcal.data
        c, conn = connection()

        x = c.execute("SELECT * FROM beer WHERE name LIKE %s", [thwart(name)])

        if int(x) > 0:
            flash("That beer is already in the system, please choose another.")
            return render_template("product_register.html", form=form)

        else:
            c.execute("INSERT INTO beer (name, brandName, Style, abv, ibu, estCal) VALUES (%s, %s, %s, %s, %s, %s)", (thwart(name), thwart(brand), thwart(style), thwart(str(abv)), thwart(str(ibu)), thwart(str(estcal))))

            conn.commit()
            flash("Thanks for registering your beer!")
            c.close()
            conn.close()
            gc.collect()
            
            return redirect(url_for("homepage"))

    return render_template("product_register.html", form=form)

# function for generating a reviews page for each beer 
@app.route('/product_page/<product>')
def products(product):
    c, conn = connection()
    c.execute("SELECT name, brandName, Style, abv, ibu, estCal FROM beer WHERE name LIKE %s ", [thwart(product)])
    product_info = c.fetchall()
    c.execute("SELECT name, userName, body, date, score FROM  site.Review, site.beer WHERE beer.id = Review.beer_id AND name LIKE %s ORDER BY date DESC", [thwart(product)])
    posts = c.fetchall()
    c.close()
    conn.close()
    gc.collect()
    return render_template('template.html', product = product_info, posts = posts)
    
# function used to create dropdown list of all registered beers for the review form
def fetch_available_items(table_name, column):
    c, conn = connection()
    c.execute("SELECT DISTINCT name FROM beer")
    return c.fetchall()

# function for adding a review to the database
@app.route('/make_review', methods=['GET','POST'])
def make_review(): 
    form = ReviewForm()
    form.name.choices = []
    for row in fetch_available_items('beer_choices', 'products'):
        stock = str(row[0])
        form.name.choices += [(stock, stock)]
    if request.method == "POST" and form.validate():
        username = form.username.data
        name = form.name.data
        score = form.score.data
        post = form.post.data
        
        c, conn = connection()
        c.execute("SELECT id FROM users where username LIKE %s", [thwart(username)])
        current_id = c.fetchone()
        c.execute("SELECT id FROM beer where name LIKE %s", [thwart(name)])
        current_beer = c.fetchone()
        c.execute("SELECT CURDATE()")
        current_date = c.fetchone()
        # print current_id
        # print current_beer
        c.execute("""INSERT INTO Review (user_id, beer_id, userName, score, body, date) VALUES (%s, %s, %s, %s, %s, %s)""", (current_id, current_beer, thwart(username), thwart(str(score)), thwart(post), current_date))

        conn.commit()
        flash("Thanks for submitting your review!")
        c.close()
        conn.close()
        gc.collect()
            
        return redirect(url_for("homepage"))

    return render_template("make_review.html", form=form)

# function for adding a new user to the database 
@app.route('/register/', methods=["GET","POST"])
def register_page():

    form = RegistrationForm()

    if request.method == "POST" and form.validate():
        username = form.username.data
        email = form.email.data
        password = sha256_crypt.encrypt((str(form.password.data)))
        c, conn = connection()

        x = c.execute("SELECT * FROM users WHERE username LIKE %s", [thwart(username)])

        if int(x) > 0:
            flash("That username is already taken, please choose another.")
            return render_template("register.html", form=form)

        else:
            c.execute("INSERT INTO users (username, password, email, is_Admin) VALUES (%s, %s, %s, null)", (thwart(username), thwart(password), thwart(email)))

            conn.commit()
            flash("Thanks for registering!")
            c.close()
            conn.close()
            gc.collect()

            session['logged_in'] = True
            session['username'] = username

            return redirect(url_for("homepage"))

    return render_template("register.html", form=form)

# function for logging in a user by checking credentials against the database and starting a session once logged in.
@app.route("/login/", methods=["GET","POST"])
def login():
    form = LoginForm()
    c, conn = connection()
    if request.method == "POST" and form.validate():
        username = form.username.data
        data = c.execute("SELECT * FROM users WHERE username LIKE %s", [thwart(username)])
        print("Hello world")
        print(data, file = sys.stdout)
        if data == 0:
            flash("Invalid credentials, try again.")
        else:
            data = c.fetchone()[2]
            print(data, file = sys.stdout)
            if sha256_crypt.verify(request.form['password'], data):
                session['logged_in'] = True
                session['username'] = request.form['username']

                flash("You are now logged in.")
                return redirect(url_for("results"))

            else:
                flash("Invalid credentials, try again.")

    gc.collect()
        
    return render_template("login.html", form = form) 

# function for generating 404 error page if needed
@app.errorhandler(404)
def page_not_found(e):
    return render_template("404.html")

# function for checking if a user is in a session 
def login_required(f):
    @wraps(f)
    def wrap(*args, **kwargs):
        if 'logged_in' in session:
            return f(*args, **kwargs)
        else:
            flash("You need to login first")
            return redirect(url_for('login'))

    return wrap

# function to logout a user and end their session
@app.route("/logout/")
@login_required
def logout():
    session.clear()
    flash("You have been logged out.")
    gc.collect()
    return redirect(url_for('homepage'))


# function to render homepage after logging out
@app.route('/')
def homepage():
    return render_template("index.html")


    
#endpoint for search
@app.route('/search', methods=['GET', 'POST'])
def search():
    c, conn = connection()
    if request.method == "POST":
        bsearch = request.form['beer']
        # search by beer, brand, or style
        c.execute("SELECT * FROM site.front_view WHERE Name LIKE %s OR BrandName LIKE %s OR Style LIKE %s", (thwart(bsearch), thwart(bsearch), thwart(bsearch)))
        conn.commit()
        data = c.fetchall()
        c.close()
        conn.close()
        gc.collect()
        return render_template('search.html', data=data)
    return render_template('search.html')

# initialize app
if __name__ == "__main__":
    app.debug = True
    app.run()

# function to render account page and get user information including reviews made    
@app.route('/user/<username>')
@login_required
def user(username):
    c, conn = connection()
    username = session['username']
    c.execute("SELECT name, body, date, score FROM  site.Review, site.beer WHERE beer.id = Review.beer_id AND userName LIKE %s ORDER BY date DESC", [thwart(username)])
    posts = c.fetchall()
    conn.commit()
    c.close()
    conn.close()
    gc.collect()
    return render_template('account.html', user=username, posts=posts)

# function to render data for table containing beer info
@app.route('/table', methods=['GET','POST'])
def results():
    c, conn = connection()
    c.execute("select * from front_view")
    data = c.fetchall()
    c.close()
    conn.close()
    gc.collect()
    return render_template("table.html", value=data)
