cd /opt/
wget http://mirrors.ispros.com.bd/apache//ant/binaries/apache-ant-1.9.4-bin.zip
unzip apache-ant-1.9.4-bin.zip && rm apache-ant-1.9.4-bin.zip
cd apache-ant-1.9.4/
ln -s /opt/apache-ant-1.9.4 /opt/ant
ln -s /opt/ant/bin/ant /usr/bin/ant
echo 'ANT_HOME=/opt/ant' >> /etc/environment
