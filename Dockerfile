FROM openjdk:17-slim

ENV JMB_VERSION 0.3.6

RUN groupadd -g 2000 musicbot && useradd -ms /bin/bash -u 2001 -g musicbot musicbot

RUN mkdir /app

ADD https://github.com/jagrosh/MusicBot/releases/download/$JMB_VERSION/JMusicBot-$JMB_VERSION.jar /app/JMusicBot.jar

RUN chown musicbot:musicbot /app/JMusicBot.jar

COPY ./docker-entrypoint.sh /app

RUN chmod +x /app/docker-entrypoint.sh && chown musicbot:musicbot /app/docker-entrypoint.sh

VOLUME /config

VOLUME /settings

RUN apt-get update && apt-get install -y --no-install-recommends gosu

ENTRYPOINT ["/app/docker-entrypoint.sh"]