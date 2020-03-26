.PHONY: runserver createsuperuser

.DEFAULT_GOAL := runserver

runserver:
	python manage.py runserver 8000
allmigrations:
	python manage.py makemigrations && python manage.py migrate

# Create a super user from env var
# You need to define an env var : DJANGO_DEV_ADMIN. Example below
# DJANGO_DEV_ADMIN=user@test.api:1234567as
createsuperuser:
	echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser(*'${DJANGO_DEV_ADMIN}'.split(':'))" | python manage.py shell
