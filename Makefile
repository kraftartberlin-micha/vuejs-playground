init:
	docker compose down
	docker compose build
	$(MAKE) startup
	$(MAKE) node

startup:
	docker compose up -d

node:
	docker-compose exec -w /usr/src/app/public/vue node npm install

vue_new:
	npm create vue@latest # public/vue
vue_format:
	npm run format
vue_public:
	npm run dev


bash:
	docker compose exec web bash
