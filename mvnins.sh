#!/bin/bash

echo "Looking up Maven Homepage..."
curl -sL https://maven.apache.org/download.cgi -o maven-home-page.html

mavenDownloadUrl=`cat maven-home-page.html|grep -v sha|grep -v asc|grep zip|grep bin|sed -n 's/.*href="\([^"]*\).*/\1/p'`
version=`echo $mavenDownloadUrl |cut -d/ -f6`

echo "Downloading Apache Maven $version"
wget "$mavenDownloadUrl" -O maven.zip

echo "Extracting..."
unzip maven.zip -d ~/.maven-bin

mavenPath="$HOME/.maven-bin/apache-maven-$version/bin"

export PATH="$PATH:$mavenPath"

#make path variable permanent
echo "export PATH=\"\$PATH:$mavenPath\"" >> ~/.bashrc

echo "Installed version:"
mvn --version

echo "**Consider running... 'source ~/.bashrc'"
