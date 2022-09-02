FROM debian:latest

RUN set -ex\
    && apt update -y \
    && apt install -y nginx \
    && apt autoremove -y \
    && mkdir /etc/nginx/asdfgx \
    && rm -rf /etc/nginx/sites-enabled/default 
    
COPY gogo.sh /gogo.sh
COPY delta.conf /etc/nginx/conf.d/delta.conf

RUN chmod +x /gogo.sh

CMD /gogo.sh
