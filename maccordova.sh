ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew install nodejs
npm install -g cordova
cd /usr/local/
cordova create hello com.example.hello HelloWorld
cd hello
cordova platform add ios
cordova platforms ls//see something like this .. ios 3.5.0
npm install -g ios-sim
cordova build
cordova emulate ios
