export USER_ID := $(shell id -u)
export GROUP_ID := $(shell id -g)

setup:
	cp -n .env.example .env
	docker compose run --rm app make setup

dev:
	docker compose up

test:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

ci:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app
