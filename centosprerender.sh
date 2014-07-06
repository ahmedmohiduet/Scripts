yum install npm
yum install nodejs
yum install fontconfig-2.8.0-3.el6.i686
cd /usr/local/
git clone https://github.com/collectiveip/prerender.git
cd prerender/
npm install
node server.js
