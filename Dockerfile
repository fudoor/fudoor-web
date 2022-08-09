FROM node:18-alpine3.15 as build

WORKDIR /code

COPY package.json /code/package.json
COPY package-lock.json /code/package-lock.json

#EXPOSE 5000
RUN npm ci --production

COPY . .

RUN npm run build 


# Nginx web server
FROM nginx:1.12-alpine as prod

COPY --from=build /code/build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]