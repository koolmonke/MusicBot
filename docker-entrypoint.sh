#!/bin/sh

cd /config

java -jar -Dconfig="/config/config.txt" -Dnogui=true /app/JMusicBot.jar
