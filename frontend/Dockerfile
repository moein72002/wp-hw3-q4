FROM nginx
COPY ./nginx.conf /etc/nginx/conf.d/
COPY ./fonts/*.ttf /usr/share/nginx/html/
COPY ./images/*.png /usr/share/nginx/html/images/
COPY ./*.html /usr/share/nginx/html/
COPY ./*.css /usr/share/nginx/html/
COPY ./*.js /usr/share/nginx/html/
COPY ./pages /usr/share/nginx/html/pages