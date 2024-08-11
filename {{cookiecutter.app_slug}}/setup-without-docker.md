# Setup

Use this guide if you do NOT want to use Docker in your project.

## Getting Started

Create and activate a virtual environment, and then install the requirements.
```sh
$ pip install -r requirements.txt
```

### Set Environment Variables

Update *project/server/config.py*, and then run:

```sh
$ export APP_NAME="{{cookiecutter.app_name}}"
$ export APP_SETTINGS=project.server.config.ProductionConfig
$ export FLASK_DEBUG=0
$ export FLASK_RUN_PORT=5183 # ako nećeš da bude na portu 5000
```

By default the app is set to use the production configuration. If you would like to use the development configuration, you can alter the `APP_SETTINGS` environment variable:

```sh
$ export APP_SETTINGS=project.server.config.DevelopmentConfig
```

### Create DB

```sh
$ python manage.py create-db
$ python manage.py db init
$ python manage.py db migrate
$ python manage.py create-admin
$ python manage.py create-data
```

### Run the Application

```sh
$ python manage.py run
```

Access the application at the address [http://localhost:5000/](http://localhost:5000/)

ili na 5183 ako si promijenio port kao u gornjem primjeru.

### Testing

Without coverage:

```sh
$ python manage.py test
```

With coverage:

```sh
$ python manage.py cov
```

Run flake8 on the app:

```sh
$ python manage.py flake
```

or

```sh
$ flake8 project
```
