# edit task1.sh...
 sh infinite.sh
 
 kill -9 $(ps aux | grep "infinite.sh" | grep -v grep | awk '{print $2}') # run the same script here to see what it producesps