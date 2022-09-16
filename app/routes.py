from flask import render_template, flash, redirect, url_for
from app import app
import random


@app.route("/index")
@app.route("/")
def hello_world():
    return f"Hello, World! {random.randint(1, 10)}"
