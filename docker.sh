#nano /root/wiki.yml
#services:
# MediaWiki:
#   container_name: wiki
#   image: mediawiki
#   restart: always
#   ports: 
#     - 8080:80
#   links:
#     - database
#   volumes:
#     - images:/var/www/html/images
     # - ./LocalSettings.php:/var/www/html/LocalSettings.php
# database:
#   container_name: mariadb
#   image: maria
#   environment:
#     MYSQL_DATABASE: mediawiki
#     MYSQL_USER: wiki
#     MYSQL_PASSWORD: WikiP@ssw0rd
#     MYSQL_RANDOM_ROOT_PASSWORD: 'yes'
#   volumes:
#     - dbvolume:/var/lib/mariadb
#volumes:
#  dbvolume:
#      external: true
#  images:
#выход из файла
#systemctl enable --now docker
#docker volume create dbvolume
#docker volume ls
#docker compose -f wiki.yml up -d
#192.168.1.1:8080 mozila
#host - mariadb
#name db - mediawiki
#name wiki - mariadb
#scp user@192.168.0.65:~/LocalSettings.php ./
#nano wiki.yml raskomentit
#docker compose -f wiki.yml stop
#docker compose -f wiki.yml up -d
