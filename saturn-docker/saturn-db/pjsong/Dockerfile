FROM mysql:5.7
ENV TZ=Asia/Shanghai
RUN echo ${TZ} | tee /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

COPY conf.d/mysql.cnf /etc/mysql/conf.d
COPY mysql.conf.d/mysqld.cnf /etc/mysql/mysql.conf.d

COPY docker-entrypoint-initdb.d/*.sql /docker-entrypoint-initdb.d/

ARG usr=root
ARG pwd=defaultpass
ENV u ${usr}
ENV p ${pwd}
#ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["mysqld", "-u$u", "-p$p"]
