# syntax=docker/dockerfile:1
FROM node:16-alpine
WORKDIR /app
COPY . .
CMD ["npx", "remix-serve", "/app"]
EXPOSE 3000
