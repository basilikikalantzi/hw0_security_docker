FROM node:18-slim

WORKDIR /app

RUN apt-get update && apt-get install -y git

RUN git clone --depth=1 https://github.com/basilikikalantzi/AuctionPlatform_Website_tedi.git && \
    cp -r AuctionPlatform_Website_tedi/frontend/eauction-web/* .

RUN npm install

RUN npm run build

FROM nginx:latest
COPY --from=0 /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]