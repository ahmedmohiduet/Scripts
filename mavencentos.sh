#download maven tar
wget http://mirror.cc.columbia.edu/pub/software/apache/maven/maven-3/3.0.5/binaries/apache-maven-3.0.5-bin.tar.gz
#untar
tar xzf apache-maven-3.0.5-bin.tar.gz -C /usr/local/
#delete unnecessary back-up
rm -f apache-maven-3.0.5-bin.tar.gz
#install
cd /usr/local
ln -s apache-maven-3.0.5 maven
export M2_HOME=/usr/local/maven
export PATH=${M2_HOME}/bin:${PATH}
#check installation
mvn -version
