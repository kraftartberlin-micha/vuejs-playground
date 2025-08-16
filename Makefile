init:
	docker compose down
	docker compose build
	$(MAKE) startup
	$(MAKE) node

startup:
	docker compose up -d

node:
	docker-compose run -T node npm install

bash:
	docker compose exec web bash
