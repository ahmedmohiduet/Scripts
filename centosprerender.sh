#install nodejs
yum install nodejs
#install nodejs's npm utility
yum install npm
#install Font configuration and customization library
yum install fontconfig-2.8.0-3.el6.i686
cd /usr/local/
#download prerender server
git clone https://github.com/collectiveip/prerender.git
cd prerender/
#build and install
npm install
#create runner and log file
echo "node server.js >> \"prerender_log.txt\"" >> prerender_runner.sh
#start prerender
sh prerender_runner.sh &
