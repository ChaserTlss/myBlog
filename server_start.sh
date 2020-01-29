#!/bin/sh
cd $(dirname $(readlink $0))
pipenv run gunicorn chasersite.wsgi  -w 2 -k gthread -b 127.0.0.1:8000
