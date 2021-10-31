#!/bin/sh

cd /settings

touch serversettings.json

chown musicbot:musicbot serversettings.json

gosu musicbot:musicbot java -jar -Dconfig="/config/config.txt" -Dnogui=true /app/JMusicBot.jar
