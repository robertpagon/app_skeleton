# Flask Skeleton

Flask app starter project using [Cookiecutter](https://github.com/audreyr/cookiecutter).

[![Build Status](https://travis-ci.org/robertpagon/app-skeleton.svg?branch=master)](https://travis-ci.org/robertpagon/app-skeleton)

This project is used to generate a basic Flask project with Cookiecutter. It's designed for a web application that uses server-side templating to render Jinja templates on the front-end.

Flask Extensions:

1. Flask-Bcrypt
1. Flask-Bootstrap
1. Flask-DebugToolbar
1. Flask-Login
1. Flask-Migrate
1. Flask-SQLAlchemy
1. Flask-Testing
1. Flask-WTF

## Quick Start

Install Cookiecutter globally:

```sh
$ pip install cookiecutter
```

Generate the boilerplate:

```sh
$ cookiecutter https://github.com/robertpagon/app-skeleton.git
```

Once generated, review the setup guides, within the newly created project directory, to configure the app:

1. [setup-with-docker.md](%7B%7Bcookiecutter.app_slug%7D%7D/setup-with-docker.md)
1. [setup-without-docker.md](%7B%7Bcookiecutter.app_slug%7D%7D/setup-without-docker.md)
