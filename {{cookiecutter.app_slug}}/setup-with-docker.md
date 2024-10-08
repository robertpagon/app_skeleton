# Docker Setup

Use this guide if you want to use Docker in your project.

> Built with Docker v19.03.5.

## Getting Started

Update the environment variables in *docker-compose.yml*, and then build the images and spin up the containers:

```sh
$ docker-compose up -d --build
```

By default the app is set to use the production configuration. If you would like to use the development configuration, you can alter the `APP_SETTINGS` environment variable:

```
APP_SETTINGS=project.server.config.DevelopmentConfig
```

Možeš mu promijeniti port na kojem radi:
```
$ export FLASK_RUN_PORT=5183 # ako nećeš da bude na portu 5000
```

Create the database:

```sh
docker-compose run web python manage.py create-db
docker-compose run web python manage.py db init
docker-compose run web python manage.py db migrate
docker-compose run web python manage.py create-admin
docker-compose run web python manage.py create-data
```

### Run the Application

```sh
docker-compose run web python manage.py run
```

Access the application at the address [http://localhost:5002/](http://localhost:5002/)

ili na 5183 ako si promijenio port kao u gornjem primjeru.

### Testing

Test without coverage:

```sh
$ docker-compose run web python manage.py test
```

Test with coverage:

```sh
$ docker-compose run web python manage.py cov
```

Lint:

```sh
$ docker-compose run web flake8 project
```
