# syntax=docker/dockerfile:1
FROM node:16-alpine
WORKDIR /app
COPY . .
CMD ["npx", "serve", "-s", "build"]
EXPOSE 3000
