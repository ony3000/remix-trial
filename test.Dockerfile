# syntax=docker/dockerfile:1
FROM node:16-alpine
WORKDIR /app
COPY . .
CMD ["npx", "serve", "-s", "-p", "4000", "build"]
EXPOSE 3000
