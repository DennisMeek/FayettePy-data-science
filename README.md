# FayettePy-data-science
FayettePy Data Science Presentation Files

## Basic Postgres Connections 

You need to install psycopg2-binary before you can do anything with Postgres

---

Django

In your settings.py, add an entry to your DATABASES setting:


DATABASES = {
    "default": {
        "ENGINE": "django.db.backends.postgresql_psycopg2",
        "NAME": "[YOUR_DATABASE_NAME]",
        "USER": "[YOUR_USER_NAME]",
        "PASSWORD": "",
        "HOST": "localhost",
        "PORT": "",
    }
}
		
---

Flask

When using the Flask-SQLAlchemy extension you can add to your application code:


from flask import Flask
from flask.ext.sqlalchemy import SQLAlchemy
app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://localhost/[YOUR_DATABASE_NAME]'
db = SQLAlchemy(app)

---

SQLAlchemy


from sqlalchemy import create_engine
engine = create_engine('postgresql://localhost/[YOUR_DATABASE_NAME]')


