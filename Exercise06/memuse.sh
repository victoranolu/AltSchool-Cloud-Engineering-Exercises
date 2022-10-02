#! /usr/bin/bash

# creating a file directory path in which the specified file will be created
filename=/home/vagrant/RAMstuff/RAMfile.txt

# email address for the mail alert
email="poormanalfredcrazy@gmail.com"
# Format the time and date for sending the mail at midnight
midnight=$( date +%H%M )
 
# writing to execute the requirement at midnight 
if [ $midnight == 0000 ]
 then
 test -f $filename
else
touch $filename
      date >>$filename
      free -h>>$filename
echo "Your RAM Midnight Report" | mail -s "RAM Report" $email
cat /home/vagrant/RAMstuff/RAMfile.txt
fi