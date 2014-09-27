#

convert(){
#Converting to other formats
#MPEG2
ffmpeg -i screencast.avi -f mpeg2video -sameq mpeg2.mpg

#MPEG4 4.2
#Convert MPEG2 video (created above) into MPEG4. This should play back in Windows Media Player.
mencoder -forceidx -mc 0 -noskip -skiplimit 0 -ovc lavc -lavcopts vcodec=msmpeg4v2:vhq -o windows_mpeg4.avi mpeg2.mpg

#Libavcodec MPEG 4
ffmpeg -i screencast.avi -sameq mpeg4.avi

#X264
#Convert HuffYUV AVI to mp4 (libx264) video.
ffmpeg -i screencast.avi -vcodec libx264 -sameq libx264.mp4

#Xvid
ffmpeg -i screencast.avi -vcodec libxvid -sameq XviD.avi
}
