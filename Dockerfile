FROM debian:buster

MAINTAINER dpoinsu <dpoinsu@student.42.fr>

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
	nginx \
	mariadb-server \
	php-fpm \
	php-mysql \
	php-gettext \
	openssl

COPY srcs/ ./root/

WORKDIR /root/

EXPOSE 80 443

ENTRYPOINT ["bash", "entry_point.sh"]
