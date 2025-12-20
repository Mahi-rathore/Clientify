#!/usr/bin/env bash
set -o errexit

# Install dependencies
pip install --upgrade pip
pip install -r requirements.txt

# Django commands
python manage.py collectstatic --noinput
python manage.py migrate
