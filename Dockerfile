FROM mcpayment/ubuntu1404-java8
ENV VERSION=0.2.2
RUN mkdir /opt/bot/ \
          /opt/bot/Playlists
RUN wget --directory-prefix=/opt/ https://raw.githubusercontent.com/hippo82/jmusicbot-docker/master/start.sh
RUN wget --directory-prefix=/opt/bot/ https://github.com/jagrosh/MusicBot/releases/download/$VERSION/config.txt
RUN wget --directory-prefix=/opt/bot/ https://github.com/jagrosh/MusicBot/releases/download/$VERSION/JMusicBot-$VERSION-Linux.jar
RUN mv /opt/bot/JMusicBot-$VERSION-Linux.jar /opt/bot/JMusicBot-Linux.jar
RUN chmod 775 /opt/run.sh
VOLUME /opt/bot/
CMD ["/opt/run.sh"]

