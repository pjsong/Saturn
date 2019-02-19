FROM mysql:5.7
ARG usr=root
ARG pwd=defaultpass
ENV u=${usr}
ENV p=${pwd}

RUN mkdir -p /apps/saturn/bin \
 && mkdir -p /apps/saturn/config

ADD ./saturn-db.sh /apps/saturn/bin/saturn-db.sh
ADD ./saturn-console.sql /apps/saturn/config/saturn-console.sql

RUN chmod +x /apps/saturn/bin/saturn-db.sh


CMD ["/apps/saturn/bin/saturn-db.sh", "$u", "$p"]
