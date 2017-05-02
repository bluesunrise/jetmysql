Jetspeed MySQL Database Docker Container
==========
This docker container extends the official MySQL docker hub container:

https://hub.docker.com/_/mysql/

In addition to running MySQL in Docker, it also creates a Jetspeed 2.3.0 full schema and 
populates that schema with minimal seed data at container initialization. This database is 
ready to use against a standard Jetspeed 2.3.0 minimal installation.  

To get started, follow the instructions below ...

Getting Started
----------------
1. Pull the latest MySQL (currently 5.7)from DockerHub

```sh
docker pull mysql
```

2. Build the Jetspeed MySQL Container

```sh
docker build -t bluesunrise/jetmysql . 
```

3. Run the Jetspeed MySQL Container detached. 
   Optionally open up port 3307 if you already have MySQL installed on your host
   
``` sh   
docker run -p 127.0.0.1:3307:3306 --detach --name=jetmysql --env="MYSQL_ROOT_PASSWORD=blue" bluesunrise/jetmysql
```

4. Ensure that its running. If you have a MySQL client locally, connect to the MySQL container.
   Note, use 127.0.0.1 and not localhost to avoid using direct sockets on localhost.
   For example:
```
mysql -h 127.0.0.1 -u root --port=3307 -p 
```

5. Connect via JDBC with Jetspeed:

``` 
<Resource name="jdbc/jetspeed" auth="Container"
            factory="org.apache.commons.dbcp.BasicDataSourceFactory"
	    type="javax.sql.DataSource" username="root" password="blue"
	    driverClassName="com.mysql.jdbc.Driver" url="jdbc:mysql://127.0.0.1:3307/jet"
            maxActive="100" maxIdle="30" maxWait="10000"/> 
```

Additional Commands
-------------------

##### stop container
docker stop jetmysql

##### remove the container
docker rm jetmysql

#### attach bash shell
docker exec -i -t jetmysql /bin/bash

NOTE: stopping the container will not remove any addition rows inserted into the database.
 However, removing the container will reset the database to initial state the next time its started.