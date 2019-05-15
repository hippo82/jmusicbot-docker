FROM mcpayment/ubuntu1404-java8
ENV VERSION=0.2.2
RUN mkdir /opt/bot/ \
          /opt/bot/Playlists
RUN touch /opt/run.sh
RUN echo "#!bin/bash" >> /opt/run.sh
RUN echo "cd /opt/bot/" >> /opt/run.sh
RUN echo "java -Dnogui=true -jar JMusicBot-Linux.jar" >> /opt/run.sh
#ADD run.sh /opt/
RUN wget https://github.com/jagrosh/MusicBot/releases/download/$VERSION/config.txt
RUN wget https://github.com/jagrosh/MusicBot/releases/download/$VERSION/JMusicBot-$VERSION-Linux.jar
RUN cp config.txt /opt/bot/
RUN cp /JMusicBot-$VERSION-Linux.jar /opt/bot/JMusicBot-Linux.jar
RUN chmod 775 /opt/run.sh
VOLUME /opt/bot/
CMD ["/opt/run.sh"]

