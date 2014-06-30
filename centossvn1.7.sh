#uninstall svn 1.6
yum remove svn
cd /usr/local/
#download 1.7
wget http://opensource.wandisco.com/centos/5/devel/RPMS/x86_64/subversion-1.7.14-1.src.rpm
#install
rpm -ivh http://opensource.wandisco.com/centos/5/devel/RPMS/x86_64/subversion-1.7.14-1.src.rpm
#remove backup(your choice)
rm -f subversion-1.7.14-1.src.rpm
