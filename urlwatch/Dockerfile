FROM python:3.7.2-slim-stretch

RUN apt-get update -y && apt-get install -y cron

RUN groupadd -r urlwatchgrp && useradd -r -g urlwatchgrp urlwatch

USER urlwatch
 
RUN pip3 install --upgrade pip setuptools && \
    pip3 install urlwatch

RUN crontab -l > mycron && \
    echo '*/15 * * * * urlwatch' > mycron && \
    crontab mycron && \
    rm mycron
#COPY urlwatch /root/.urlwatch
#VOLUME /root/.urlwatch
#WORKDIR /root/.urlwatch

#CMD ["crond", "-f", "-L", "/dev/stdout"]