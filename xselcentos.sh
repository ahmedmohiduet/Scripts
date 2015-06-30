cd /tmp/
#download
wget http://dl.fedoraproject.org/pub/epel/6/i386/xsel-1.2.0-8.el6.i686.rpm
yum -y install xsel-1.2.0-8.el6.i686.rpm
#remove backup
rm -f xsel-1.2.0-8.el6.i686.rpm
#check installation and see:
#xsel version 1.2.0 by Conrad Parker <conrad@vergenet.net>
xsel --version
