FROM node:22-alpine AS build

WORKDIR /app

RUN npm i -g pnpm
COPY pnpm-lock.yaml ./
RUN pnpm fetch

COPY . .
RUN pnpm i --offline
RUN pnpm build

FROM nginx:1.29.0-alpine-slim AS deploy

WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY --from=build /app/dist .
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]