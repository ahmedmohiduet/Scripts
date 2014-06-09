#uninstall if already old versions are there
yum remove ant
cd /opt/
#download ant
wget http://mirrors.ispros.com.bd/apache//ant/binaries/apache-ant-1.9.4-bin.zip
#unzip and delete zip(your choice)
unzip apache-ant-1.9.4-bin.zip && rm apache-ant-1.9.4-bin.zip
cd apache-ant-1.9.4/
#create symlinks
ln -s /opt/apache-ant-1.9.4 /opt/ant
ln -s /opt/ant/bin/ant /usr/bin/ant
#add environment variable
echo 'ANT_HOME=/opt/ant' >> /etc/environment
