FROM openjdk:11-jre-slim

ENV JMB_VERSION 0.3.5

RUN mkdir /app
ADD https://github.com/jagrosh/MusicBot/releases/download/$JMB_VERSION/JMusicBot-$JMB_VERSION.jar /app/JMusicBot.jar

COPY ./docker-entrypoint.sh /app

RUN chmod +x /app/docker-entrypoint.sh

VOLUME /config

ENTRYPOINT ["/app/docker-entrypoint.sh"]
