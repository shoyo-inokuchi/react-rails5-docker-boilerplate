FROM node:10.15.2-alpine as builder
WORKDIR /docker-client
COPY package.json /docker-client/package.json
RUN npm install
COPY . /docker-client
RUN npm run build

FROM nginx:1.15.9-alpine
COPY --from=builder /docker-client/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
