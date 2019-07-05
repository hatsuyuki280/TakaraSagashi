#! /usr/bin/env python3

from flask import Flask, jsonify
from JHWS import jhws

app = Flask(__name__)

@app.route("/api")
def api():
    return jsonify(jhws())

@app.route("/helloWorld")
def helloWorld():
    return "Hello World"

if __name__ == '__main__':
    app.run(host='127.0.0.1', port=8987, debug=True)