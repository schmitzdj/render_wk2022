from flask import render_template, flash, redirect, url_for
from app import app


@app.route("/index")
@app.route("/")
def hello_world():
    return "Hello, World!"
