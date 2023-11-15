all: build up

build:
	docker-compose  -f  ./srcs/docker-compose.yaml build
down:
	docker-compose -f ./srcs/docker-compose.yaml down


up:
	docker-compose -f ./srcs/docker-compose.yaml up

clear:
	docker-compose -f ./srcs/docker-compose.yaml down --rmi all -v --remove-orphans

re : clear build up
