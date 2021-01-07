# internal configuration for nifi nodes in network
FROM mkobit/nifi:1.0.0-openjdk-8
# LABEL description="the environment setup to find best container and set container props "

ADD ./nifi.properties conf
ADD ./start-nifi.sh .

# EXPOSE CLUSTERS FOR NIFI VIA PROXY STREAM
EXPOSE 8080 8081 8082 9001
CMD ["bash","./start-nifi.sh"]


