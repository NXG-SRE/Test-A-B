FROM node:12.18.3 AS deps
WORKDIR /opt/app
COPY ./package-lock.json ./package.json ./
RUN npm ci

FROM deps AS build
RUN ls -la
COPY . ./
RUN npm run build

FROM nginx:alpine
RUN rm -rf /usr/share/nginx/html/*
COPY --from=build /opt/app/dist/* /usr/share/nginx/html/
RUN chown -hR nginx:nginx /usr/share/nginx/html/