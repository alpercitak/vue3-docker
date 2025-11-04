dev:
	pnpm dev

build:
	pnpm build

deploy:
	COMPOSE_BAKE=true docker-compose up --remove-orphans --build