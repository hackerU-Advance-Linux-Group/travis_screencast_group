#!/bin/bash
set -x
set -e
set -u
export dir_root=$(cd $(dirname $0) && pwd )


task(){
local cmd args size
args="$@"
cmd="$dir_script/${args}.sh"
 

if [ -s /tmp/session.ogv ];then
 size=$( du /tmp/session.ogv | cut -d'.'  -f1 ) 
 echo "[SIZE] $size"
 if [ $size -gt 9000000 ];then
  $file_github
 fi
fi
}

filename_init=$1
source $dir_root/config.cfg
steps_for_config
commander "task $filename_init"
