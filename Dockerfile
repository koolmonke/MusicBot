FROM eclipse-temurin:11

RUN groupadd -g 2000 musicbot && useradd -ms /bin/bash -u 2001 -g musicbot musicbot

VOLUME /settings

RUN apt-get update && apt-get install -y --no-install-recommends gosu

RUN mkdir /app

COPY ./docker-entrypoint.sh /app

RUN chmod +x /app/docker-entrypoint.sh && chown musicbot:musicbot /app/docker-entrypoint.sh

ENV JMB_VERSION 0.3.9

ADD https://github.com/jagrosh/MusicBot/releases/download/$JMB_VERSION/JMusicBot-$JMB_VERSION.jar /app/JMusicBot.jar

RUN chown musicbot:musicbot /app/JMusicBot.jar

ENTRYPOINT ["/app/docker-entrypoint.sh"]
