 #!/usr/bin/env bash
 count=0
 echo > out.log

 while true
 do
     ./buggy.sh &>> out.log
     if [[ $? -ne 0 ]]; then ## $? is the exit status of the last command  not equal to 0 means error
         cat out.log
         echo "failed after $count times"
         break
     fi
     ((count++))

 done