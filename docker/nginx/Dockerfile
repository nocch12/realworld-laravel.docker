FROM nginx:1.22

WORKDIR /var/www/laravel

ENV TZ=Asia/Tokyo

CMD /bin/sh -c "envsubst '$$NGINX_SERVER_NAME' < /etc/nginx/templates/default.conf.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
