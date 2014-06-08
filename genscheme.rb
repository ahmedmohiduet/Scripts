require 'xcodeproj'
xcproj = Xcodeproj::Project.open("HelloWorld.xcodeproj")
xcproj.recreate_user_schemes
xcproj.save
