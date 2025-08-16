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
	docker-compose run -T --rm node npm cache clean --force
	rm -rf public/vue
	docker-compose run -i --rm node npm create vue@latest # public/vue
	$(MAKE) node
vue_format:
	docker-compose run -T --rm -w /usr/src/app/public/vue node npm run format
vue_public:
	docker-compose run -T --rm -w /usr/src/app/public/vue node npm run dev


bash:
	docker compose exec web bash
