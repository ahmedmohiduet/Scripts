#make sure ruby is installed
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
#need nodejs npm utility
brew install nodejs
#install cordova
npm install -g cordova
cd /usr/local/
#create hello world project
cordova create hello com.example.hello HelloWorld
cd hello
cordova platform add ios
cordova platforms ls//see something like this .. ios 3.5.0
#install iphone emulator
npm install -g ios-sim
#build project
cordova build
#run helloworld app
cordova emulate ios
#now, let's distribute our app (create .ipa distribution file)
cd /platforms/ios/
#install xcodeproj
sudo gem install xcodeproj
#download ruby script to generate project scheme
wget --no-check-certificate -U Mozilla/5.0 https://raw.githubusercontent.com/ahmedmohiduet/Scripts/master/genscheme.rb
#create project scheme
ruby genscheme.rb
#create xcarchive
xcodebuild -scheme HelloWorld archive CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO -archivePath $(pwd)/HelloWorld.xcarchive
#create ipa(unsigned)
xcodebuild -project HelloWorld.xcodeproj -exportArchive -exportFormat ipa -archivePath $(pwd)/HelloWorld.xcarchive -exportPath $(pwd)/HelloWorld.ipa CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO -alltargets -configuration Release
