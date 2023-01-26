FROM mysql:5.7
ENV MYSQL_ROOT_PASSWORD=petclinic 
ENV MSQL_PASSWORD=petclinic
ENV MYSQL_USER=pc
COPY CreateTables.sql /docker-entrypoint-initdb.d/
EXPOSE 3306