from random import randint
from time import sleep

from flask import Flask, jsonify

app = Flask(__name__)


@app.route('/test', methods=['GET'])
def get():
    _sleep = randint(1, 4)
    sleep(_sleep)
    return jsonify({'time': _sleep}), 200
