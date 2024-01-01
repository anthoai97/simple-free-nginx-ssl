# FROM nginx

# COPY nginx.conf /etc/nginx/nginx.conf
# COPY index.html /usr/share/nginx/html
# COPY 50x.html /usr/share/nginx/html

# UPDAte to SSL
FROM nginx
COPY nginx-ssl.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html
COPY 50x.html /usr/share/nginx/html

COPY ./keygen/localhost.crt /etc/ssl/localhost.crt
COPY ./keygen/localhost.key /etc/ssl/localhost.key

