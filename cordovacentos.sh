#install node.js
yum install nodejs
#install npm utility
yum install npm
#install cordova
npm install -g cordova
#install android SDK prequisite libraries
yum install glibc.i686 glibc-devel.i686 libstdc++.i686 zlib-devel.i686 ncurses-devel.i686 libX11-devel.i686 libXrender.i686 libXrandr.i686
cd /usr/local
#download android SDK
wget http://dl.google.com/android/adt/22.6.2/adt-bundle-linux-x86-20140321.zip
#extract and remove backup zip(your choice)
unzip adt-bundle-linux-x86-20140321.zip && rm -f adt-bundle-linux-x86-20140321.zip
mv adt-bundle-linux-x86-20140321/ android/
#add environment variables
echo "export PATH=$PATH:/usr/local/android/sdk/platforms" >> ~/.profile
echo "export PATH=$PATH:/usr/local/android/sdk/platform-tools" >> ~/.profile
echo "export PATH=$PATH:/usr/local/android/sdk/tools" >> ~/.profile
source ~/.profile
#remove ant previous version
yum remove ant
cd /opt/
#download ant 1.9
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
