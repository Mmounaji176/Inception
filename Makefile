build:
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down

clean:
	docker-compose down -v
push:
	git add .
	git commit -m inception
	git push

.PHONY:
	build up down clean