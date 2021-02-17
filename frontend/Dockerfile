# build environment
FROM node:14-alpine as builder
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build
# production environment
FROM nginx:1.9.15-alpine
COPY --from=builder /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
