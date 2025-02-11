# edit task1.sh...
sh infinite.sh
ps aux | grep "infinite.sh" | grep -v grep | awk '{print $2}' # running the script to check its output -- this basically gets the process id to end
kill -9 $(ps aux | grep "infinite.sh" | grep -v grep | awk '{print $2}') # run the same script here to see what it producesps
