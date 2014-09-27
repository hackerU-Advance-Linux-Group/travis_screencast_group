#sudo apt-get install ffmpeg
wget http://www.ffmpeg.org/releases/ffmpeg-0.6.tar.gz
tar xzvf ffmpeg-0.6.tar.gz

 cd ffmpeg-0.6
  sudo apt-get install xorg-libXext
 sudo apt-get install xorg-libXfixes
./configure --enable-x11grab --enable-gpl --enable-nonfree --extra-cflags="-I/opt/local/include -I/opt/local/include/X11"  --extra-ldflags=-L/opt/local/lib


#./configure --prefix="$HOME/ffmpeg_build" \
#  --extra-cflags="-I$HOME/ffmpeg_build/include" --extra-ldflags="-L$HOME/ffmpeg_build/lib" \
#  --bindir="$HOME/bin" --extra-libs="-ldl" --enable-gpl --enable-libass --enable-libfdk-aac \
#  --enable-libmp3lame --enable-libopus --enable-libtheora --enable-libvorbis --enable-libvpx \
#  --enable-libx264 --enable-nonfree --enable-x11grab

make 
sudo make install
sudo make distclean
hash -r
