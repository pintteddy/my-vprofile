# #!/bin/bash
# sudo apt update
# sudo apt upgrade -y
# sudo apt install openjdk-11-jdk -y
# sudo apt install tomcat9 tomcat9-admin tomcat9-docs tomcat9-common git -y
#/bin/bash
vagrant ssh app01
cat /etc/hosts
yum update -y
yum install epel-release -y
dnf -y install java-11-openjdk java-11-openjdk-devel
dnf install git maven wget -y
cd /tmp/
wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.75/bin/apache-tomcat-9.0.75.tar.gz
tar xzvf apache-tomcat-9.0.75.tar.gz
useradd --home-dir /usr/local/tomcat --shell /sbin/nologin tomcat
cp -r /tmp/apache-tomcat-9.0.75/* /usr/local/tomcat/
chown -R tomcat.tomcat /usr/local/tomcat
vi /etc/systemd/system/tomcat.service
systemctl daemon-reload
systemctl start tomcat
systemctl enable tomcat