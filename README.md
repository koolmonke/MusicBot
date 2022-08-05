# MusicBot
[![Docker](https://github.com/koolmonkey/MusicBot/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/koolmonkey/MusicBot/actions/workflows/docker-publish.yml)

Docker(-compose)  deployment for JMusicBot
You can put your config file in /settings folder

You can find more about JMusicBot config file here https://jmusicbot.com/config/

Image rebuilds monthly

docker-compose file example
```yml
version: "2"

services:
  jmusicbot:
    image: ghcr.io/koolmonkey/musicbot:master
    restart: unless-stopped
    volumes:
      - ./settings/:/settings/
```

Main features:
 * Runs on Eclipse Temurin
 * Saves server-settings.json between restarts
 * Runs main application as separate user to avoid security concerns 
