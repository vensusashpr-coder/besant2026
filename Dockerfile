FROM ubuntu:18.04
RUN  apt-get update
RUN  apt-get install -y apache2 curl net-tools wget unzip
RUN echo "Test step successful"
RUN  mkdir -p /var/www/html/
RUN echo "<h1>My Website Works</h1>" > /var/www/html/index.html
ENTRYPOINT apachectl -D FOREGROUND
