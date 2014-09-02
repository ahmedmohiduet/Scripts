cd /usr/local
#download ffmpeg 2.3.3
wget http://ffmpeg.org/releases/ffmpeg-2.3.3.tar.bz2
tar -jxvf ffmpeg-2.3.3.tar.bz2
#remove backup
rm ffmpeg-2.3.3.tar.bz2
cd ffmpeg-2.3.3
./configure
#build
make && make install
