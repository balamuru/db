# db
A playground for Go SQL

## Dev DB install
MariaDb was chosen for ease of use . The procedure for MySQL should be similar. In this case, we mapping source and target ports to be the same `3306:3306` . Modify as desired

`docker run --name mariadbtest -e MYSQL_ROOT_PASSWORD=<your-root-password> -p 3306:3306 -d docker.io/library/mariadb:10.3`

## Find the corresponding IP Addr to connect to 
If connecting from the same workstation, connect to `localhost:3306`  using your DB client of choice. Else execute the following command to extract the IP address that the docker container is using

`docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' mariadbtest`

## Setup sample data by executing the SQL statements in `setup.sql` (Use tooling/IDE Plugin of choice)

## Have fun experimenting 
