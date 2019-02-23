FROM java:8

ARG SATURN_CONSOLE_DOWNLOAD_URL=https://oss.sonatype.org/service/local/artifact/maven/content?r=releases&g=com.vip.saturn&a=saturn-console&c=exec&v=3.1.0

RUN wget ${SATURN_CONSOLE_DOWNLOAD_URL} -O saturn-console.jar

ENV TZ "Asia/Shanghai"
ENV DB_IP 172.19.0.2
ENV DB_URL jdbc:mysql://${DB_IP}:3306/saturn_console
ENV DB_USERNAME root
ENV DB_PASSWOR defaultpass

EXPOSE 9088

CMD ["java", "-DSATURN_CONSOLE_DB_URL=${DB_URL}", "-DSATURN_CONSOLE_DB_USERNAME=${DB_USERNAME}", "-DSATURN_CONSOLE_DB_PASSWORD=${DB_PASSWOR}", "-Dsaturn.stdout=true", "-Dsaturn.embeddedZk=true", "-jar", "saturn-console.jar"]
