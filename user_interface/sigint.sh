count=0
trap ' echo
       echo "Try count: $count"
       exit ' SIGINT
while : 
do
   curl -o /dev/null $1
   count=$(expr $count + 1)
   sleep 1
done
