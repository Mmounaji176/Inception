ALL:
    docker compose ./srcs/requirements/dokcer-compose.yaml build

up:
    docker compose ./srcs/requirements/dokcer-compose.yaml up

down:
    docker compose ./srcs/requirements/dokcer-compose.yaml down

clean:
    docker volume rm $(docker volume ls -q)