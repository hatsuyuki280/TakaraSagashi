from flask import Flask
from TakaraSagashi.JHWS import jhws

app = Flask(__name__)

@app.route("/api")
def api():
    return jhws()

@app.route("/helloWorld")
def helloWorld():
    return "Hello World"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8987, debug=True)