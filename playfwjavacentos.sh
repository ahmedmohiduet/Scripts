#Move to tmp folder
cd /tmp
 
#Download latest Typesafe Activator
wget http://downloads.typesafe.com/typesafe-activator/1.2.10/typesafe-activator-1.2.10.zip
 
#Unzip it
unzip typesafe-activator-1.2.10.zip
rm typesafe-activator-1.2.10.zip
#Move unzip folder activator-1.2.10 to /opt
mv activator-1.2.10 /opt
 
#Create soft symbolic link from /opt/activator-1.2.10/activator to /usr/local/sbin/activator
ln -s /opt/activator-1.2.10/activator /usr/local/sbin/activator
 
#Try to run activator
activator
#see version
activator --version
#create new app using activator
cd /usr/local/
activator new my-first-app play-java
#here we are using play-java template

#run the app
cd my-first-app/
#you must go to the created project directory
#create helloworld project
activator new my-first-app play-java

#run helloworld project
activator run
