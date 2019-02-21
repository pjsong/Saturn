FROM mysql:5.7
ENV TZ=Asia/Shanghai

RUN dpkg-reconfigure -f noninteractive tzdata
RUN echo ${TZ} | tee /etc/timezone
COPY mysql.conf.d/mysqld.cnf /etc/mysql/mysql.conf.d

COPY docker-entrypoint-initdb.d/*.sql /docker-entrypoint-initdb.d/

# run dockerbuild.sh first, then see docker-compose.yml file