From alpine:3.11

RUN apk add --no-cache bash
#RUN apk --update curl unzip
RUN apk add openjdk8-jre

RUN mkdir -p /opt/h2/sql
ADD kit/h2-1.4.200.jar /opt/h2/h2-1.4.200.jar
ADD kit/sql/create.sql /opt/h2/sql
ADD kit/createDb.sh /opt/h2
RUN chmod +x /opt/h2/*.sh


EXPOSE 9092 9093

CMD cd /opt/h2 && java -cp h2-1.4.200.jar org.h2.tools.Server -tcp -web -tcpAllowOthers -webAllowOthers -tcpPort 9092 -webPort 9093
