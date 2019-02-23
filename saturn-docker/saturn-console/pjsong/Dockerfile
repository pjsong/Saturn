FROM java:8

ARG SATURN_CONSOLE_DOWNLOAD_URL

RUN wget ${SATURN_CONSOLE_DOWNLOAD_URL} -O saturn-console.jar

ENV TZ "Asia/Shanghai"
ENV DB_URL jdbc:mysql://db:3306/saturn_console
ENV DB_USERNAME root
ENV DB_PASSWOR defaultpass

EXPOSE 9088

CMD ["java", "-DSATURN_CONSOLE_DB_URL=${DB_URL}", "-DSATURN_CONSOLE_DB_USERNAME=${DB_USERNAME}", "-DSATURN_CONSOLE_DB_PASSWORD=${DB_PASSWOR}", "-Dsaturn.stdout=true", "-Dsaturn.embeddedZk=true", "-jar", "saturn-console.jar"]
