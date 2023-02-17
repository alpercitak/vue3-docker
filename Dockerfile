FROM node:18-alpine AS build

WORKDIR /app
COPY . .

RUN npm i -g pnpm
RUN pnpm install
RUN pnpm run build

FROM nginx:1.18-alpine AS deploy

WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY --from=build /app/dist .
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]