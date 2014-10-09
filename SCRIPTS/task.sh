
set -u

$cmd_trap_err_travis

print color 33 "DISPLAY: $DISPLAY"

expose_file(){
  gxmessage -file $file -timeout 3 -title "$filename";
}

run(){
local pid file filename

#test -f $file_list_session || exiting
while read line;do

test -n "$line" || { print ok empty line; break; }
  file=dir_TEST=$dir_TEST/BANK/${line}.sh
  filename=$(basename $file)
  commander "assert file_exist $file"
   (   commander $file )&
  #pid=$!
  commander sleep $timeout_task
  #kill $pid
done <$dir_root/task.txt
}

run
