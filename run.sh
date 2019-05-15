#!bin/bash
VERSION=0.2.2
    mkdir /opt/bot && \
    mkdir /opt/bot/Playlists && \
    wget --directory-prefix=/opt/ https://raw.githubusercontent.com/hippo82/jmusicbot-docker/master/run.sh && \
    wget --directory-prefix=/opt/bot/ https://github.com/jagrosh/MusicBot/releases/download/$VERSION/config.txt && \
    wget --directory-prefix=/opt/bot/ https://github.com/jagrosh/MusicBot/releases/download/$VERSION/JMusicBot-$VERSION-Linux.jar  && \
    chmod 775 /opt/run.sh
	sed -i "s/VERSION/$VERSION/g" /opt/run.sh
cd /opt/bot/
java -Dnogui=true -jar JMusicBot-VERSION-Linux.jar
