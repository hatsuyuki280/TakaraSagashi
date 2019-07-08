#! /usr/bin/env python3

from flask import Flask, jsonify, request
from JHWS import jhws

app = Flask(__name__)



@app.route("/api")
def api():
    # ktgy = request.args.get("ktgy")
    kwd = request.args.get("kwd")
    # R18 = request.args.get("R18")
    # instock = request.args.get("instock")
    if request.args.__len__()==0:
        return {"error":"No KeyWord"}
    else:
        return jsonify(jhws(kwd=kwd))
    return "?"

@app.route("/helloWorld")
def helloWorld():
    return "Hello World"

@app.route("/404")
def notfound():
    return "<h1>404</h1><br><p>The Files You Requested is NOT exist in Server.</p>"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8987, debug=True)