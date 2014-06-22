yum install npm
npm install -g cordova
yum install glibc.i686 glibc-devel.i686 libstdc++.i686 zlib-devel.i686 ncurses-devel.i686 libX11-devel.i686 libXrender.i686 libXrandr.i686
cd /usr/local
wget http://dl.google.com/android/adt/22.6.2/adt-bundle-linux-x86-20140321.zip
unzip adt-bundle-linux-x86-20140321.zip && rm -f adt-bundle-linux-x86-20140321.zip
mv adt-bundle-linux-x86-20140321/ android/
echo "export PATH=$PATH:/usr/local/android/sdk/platforms" >> ~/.profile
echo "export PATH=$PATH:/usr/local/android/sdk/platform-tools" >> ~/.profile
echo "export PATH=$PATH:/usr/local/android/sdk/tools" >> ~/.profile
source ~/.profile
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
#apply changes on current session
source /etc/environment
yum install ant-apache-regexp
