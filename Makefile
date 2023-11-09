all: build up

build:
	docker-compose  -f  /Users/mmounaji/safi_baraka/srcs/docker-compose.yaml build

up:
	docker-compose -f /Users/mmounaji/safi_baraka/srcs/docker-compose.yaml up

down:
	docker-compose -f /Users/mmounaji/safi_baraka/srcs/docker-compose.yaml down --rmi all -v --remove-orphans
