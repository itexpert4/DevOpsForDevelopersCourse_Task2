FROM alpine:latest

WORKDIR /web_app

RUN apk update && \
    apk add nginx

COPY nginx/index.html /usr/share/nginx/html/index.html

COPY nginx/default.conf /etc/nginx/http.d/

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]