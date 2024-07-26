#!/bin/bash
#
# start flask app
# Author: @sanjayk9r
#

export FLASK_APP=go-short-url.py
export FLASK_DEBUG=True
export FLASK_RUN_HOST="127.0.0.1"
export FLASK_RUN_PORT=8080

flask run
