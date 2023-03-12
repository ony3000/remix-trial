# syntax=docker/dockerfile:1
FROM node:16-alpine
WORKDIR /app
COPY package* ./
RUN pnpm install
COPY . .
RUN pnpm run build
CMD ["pnpm", "run", "start"]
EXPOSE 3000
