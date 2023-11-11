all: build up

build:
	docker-compose  -f  /Users/mmounaji/safi_baraka/srcs/docker-compose.yaml build
down:
	docker-compose -f /Users/mmounaji/safi_baraka/srcs/docker-compose.yaml down --rmi all -v --remove-orphans


up:
	docker-compose -f /Users/mmounaji/safi_baraka/srcs/docker-compose.yaml up

clear:
	docker-compose -f /Users/mmounaji/safi_baraka/srcs/docker-compose.yaml down --rmi all -v --remove-orphans
	rm -rf /Users/mmounaji/safi_baraka/wordpress/*
	rm -rf /Users/mmounaji/safi_baraka/mariadb/*
