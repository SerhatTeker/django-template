# Quick Start

## Requirements

- Python 3.6 or higher
- Django 2.2.10


## Basic installation

```bash
# install virtual environment
$ virtualenv -p python3 .venv
# activate virtual environment
$ source .venv/bin/activate
# install requirements
$ pip install -r requirements.txt
# migrate database
$ ./manage.py migrate
```

## Running

```bash
$ ./manage.py runserver
```

## It Worked!

Go to: http://localhost:8000/


------

## TODOs

+ [x] migrate to Django 2.0.12
+ [x] migrate to Django 2.2.10
+ [ ] add logging.ini config
