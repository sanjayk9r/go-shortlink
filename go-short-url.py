""" Local "go" short-link service """
# Author: sanjayk9r@

import json
import logging
from flask import Flask, request, redirect, render_template

app = Flask(__name__)

# configure root logger
logging.basicConfig(format="[%(asctime)s] %(levelname)s \
                    in %(module)s: %(message)s", level=logging.INFO)

# Load URLs
with open('urlsdb.json', encoding='utf8') as urlsdb:
    urls = json.load(urlsdb)


@app.errorhandler(404)
def go(e):
    """ My "go" short-link error handler main """
    sr = request.path.replace('/', '')
    try:
        url = urls[sr]
    except KeyError:
        app.logger.error("Record %s not found in localdb", sr)
        return render_template('404.html'), 404

    app.logger.info("Redirecting for URL: %s", url)
    return redirect(url, code=302)


@app.route('/listdb', methods=['GET'])
def listdb():
    """ My "go" short-link service list registered URL """
    return render_template('list.html', my_listdb=urls)


@app.route('/home', methods=['GET'])
def index():
    """ My "go" short-link service home page """
    return render_template('index.html')


if __name__ == '__main__':
    app.run(debug=True, port=80, host="127.0.0.1")
