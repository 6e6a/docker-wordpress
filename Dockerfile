FROM wordpress:latest
RUN apt-get update && apt-get install -y ffmpeg
RUN rm -rf /usr/local/etc/php/conf.d/opcache-recommended.ini
COPY uploads.ini /usr/local/etc/php/conf.d/uploads.ini
