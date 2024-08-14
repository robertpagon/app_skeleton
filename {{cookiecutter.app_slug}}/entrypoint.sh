#!/bin/sh

# Ovo koristi docker:
#    grep entrypoint -R *
#      Dockerfile:# add entrypoint.sh
#      Dockerfile:COPY ./entrypoint.sh /usr/src/app/entrypoint.sh
#      Dockerfile:CMD ["./entrypoint.sh"]
#      requirements_new.txt:entrypoints==0.3

echo "Waiting for postgres..."

while ! nc -z web-db 5432; do
  sleep 0.1
done

echo "PostgreSQL started"

python manage.py run -h 0.0.0.0
