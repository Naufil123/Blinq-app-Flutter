from flask import Flask, request, jsonify, g
from flask_cors import CORS
import sqlite3
import hashlib
import os

app = Flask(__name__)
CORS(app)
def generate_salt():
    return os.urandom(16)

def hash_password(password, salt):
    password = password.encode('utf-8')
    salted_password = password + salt
    hashed_password = hashlib.sha256(salted_password).hexdigest()
    return hashed_password

def get_db():
    if 'db' not in g:
        g.db = sqlite3.connect('consumer.db')
        g.db.row_factory = sqlite3.Row
    return g.db

def create_table():
    db = get_db()
    cursor = db.cursor()
    cursor.execute('''
        CREATE TABLE IF NOT EXISTS consumer (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            username TEXT NOT NULL,
            email TEXT NOT NULL UNIQUE,
            mobile TEXT NOT NULL,
            pin TEXT NOT NULL,
            full_name TEXT NOT NULL,
            password TEXT NOT NULL,
            salt TEXT NOT NULL
        )
    ''')
    db.commit()

@app.teardown_appcontext
def close_db(error):
    if hasattr(g, 'db'):
        g.db.close()

@app.route('/register', methods=['POST'])
def register_user():
    data = request.json
    username = data.get('username')
    email = data.get('email')
    mobile = data.get('mobile')
    pin = data.get('pin')
    full_name = data.get('full_name')

    cursor = get_db().cursor()

    cursor.execute('SELECT email FROM consumer WHERE email = ?', (email,))
    existing_email = cursor.fetchone()
    if existing_email:
        return jsonify({"message": f"Email '{email}' is already registered."}), 400
    if len(pin) < 4:
        return jsonify({"message": "PIN must be at least 4 digits long."}), 400
    if len(mobile) != 11:
        return jsonify({"message": "Mobile no is not correct"}), 400

    salt = generate_salt()
    hashed_pin = hash_password(pin, salt)

    cursor.execute('''
        INSERT INTO consumer (username, email, mobile, pin, full_name, password, salt)
        VALUES (?, ?, ?, ?, ?, ?, ?)
    ''', (username, email, mobile, pin, full_name, hashed_pin, salt))

    get_db().commit()
    return jsonify({"message": f"User '{username}' successfully registered."}), 201

@app.route('/signin', methods=['POST'])
def sign_in_user():
    data = request.json
    username = data.get('username')
    entered_pin = data.get('pin')

    cursor = get_db().cursor()

    cursor.execute('SELECT salt, password FROM consumer WHERE username = ?', (username,))
    result = cursor.fetchone()
    if result:
        salt, stored_password = result
        entered_password = hash_password(entered_pin, salt)
        if entered_password == stored_password:
            return login_success()
        else:
            return jsonify({"message": "Invalid credentials. Please check your username and password."}), 401
    else:
        return jsonify({"message": "User not found. Please check your username."}), 401

@app.route('/reset_pin', methods=['POST'])
def reset_pin():
    data = request.json
    username = data.get('username')
    new_pin = data.get('new_pin')
    reentered_pin = data.get('reentered_pin')

    if new_pin is None or reentered_pin is None:
        return jsonify({"message": "Invalid input data."}), 400

    cursor = get_db().cursor()

    cursor.execute('SELECT id, salt FROM consumer WHERE username = ?', (username,))
    user_data = cursor.fetchone()

    if user_data:
        if new_pin == reentered_pin:
            salt = user_data['salt']
            hashed_pin = hash_password(new_pin, salt)
            cursor.execute('UPDATE consumer SET pin = ?, password = ? WHERE id = ?',
                           (new_pin, hashed_pin, user_data['id']))
            get_db().commit()
            return jsonify({"message": "PIN reset successful."}), 200
        else:
            return jsonify({"message": "New PIN and re-entered PIN do not match."}), 400
    else:
        return jsonify({"message": "Username not found. Please check your username."}), 404

@app.route('/login_success', methods=['POST'])
def login_success():
    data = request.json
    username = data.get('username')

    cursor = get_db().cursor()

    cursor.execute('SELECT full_name, mobile FROM consumer WHERE username = ?', (username,))
    user_data = cursor.fetchone()
    if user_data:
        full_name, mobile = user_data
        return jsonify({ "full_name": full_name, "mobile": mobile}), 200
    else:
        return jsonify({"message": "User not found. Please check your username."}), 401

if __name__ == '__main__':
    with app.app_context():
        create_table()
    app.run(host='0.0.0.0', port=8083, debug=True)
