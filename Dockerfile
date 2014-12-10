FROM dockerfile/ubuntu

ENV DEBIAN_FRONTEND noninteractive

# install required packages
RUN apt-get update && \
  
  # zabbix dependencies
  apt-get install -y libsasl2-modules postfix
  
ADD postfix/main.cf /etc/postfix/main.cf

# Expose smtp port
EXPOSE 25

# VOLUME ["/usr/lib/zabbix/alertscripts", "/usr/lib/zabbix/externalscripts"]

ADD start /start
CMD ["/start"]