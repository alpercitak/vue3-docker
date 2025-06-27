dev:
	pnpm run dev

build:
	pnpm run build

deploy:
	COMPOSE_BAKE=true docker-compose up --remove-orphans --build