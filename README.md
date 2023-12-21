# Prerequisites

1. Install maven in MAC-OS using as ref in url:https://www.digitalocean.com/community/tutorials/install-maven-mac-os
2. For install rabbitmq in Amazon Linux 2023 refer url: https://www.rabbitmq.com/install-rpm.html and for automating RabbitMQ script refer [RabbitMQ script](/userdata/rabbitmq.sh)
3. For automating MySQL script in Amazon Linux 2023 refer [MYSQL script](/userdata/mysql.sh)
4. Use ubuntu 22 for Tomcat9 and automation script is [TOMCAT script](/userdata/tomcat_ubuntu.sh)

#

- JDK 1.8 or later
- Maven 3 or later
- MySQL 5.6 or later

# Technologies

- Spring MVC
- Spring Security
- Spring Data JPA
- Maven
- JSP
- MySQL

# Database

Here,we used Mysql DB
MSQL DB Installation Steps for Linux ubuntu 14.04:

- $ sudo apt-get update
- $ sudo apt-get install mysql-server

Then look for the file :

- /src/main/resources/accountsdb
- accountsdb.sql file is a mysql dump file.we have to import this dump to mysql db server
- > mysql -u <user_name> -p accounts < accountsdb.sql
