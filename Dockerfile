FROM nginx
ENV SERVER_NUMBER 0
COPY ./index.html.tmpl /usr/share/nginx/html
CMD cat /usr/share/nginx/html/index.html.tmpl|sed "s/{SERVER_NUMBER}/${SERVER_NUMBER}/">/usr/share/nginx/html/index.html ; nginx -g 'daemon off;'
