#!/bin/sh

cd /settings

touch serversettings.json

echo "[INFO] Changing ownership of serversettings.json to musicbot:musicbot"
chown musicbot:musicbot serversettings.json

gosu musicbot:musicbot java -jar -Dnogui=true /app/JMusicBot.jar
