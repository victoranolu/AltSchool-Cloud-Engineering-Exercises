In the third exercise given to me as by the instructor. He taught me how to create a user, groups and ssh keys. I learnt about the powers of `sudo` and how it effective it can be using it. After the teachings, he gave me and exercise (as earlier mentioned). Create 3 groups - admin, support, engineering. Create a user in each of the groups and add the users in these groups to sudoers. 

In creating my groups, I capitalized the first letter of each group and created users - Victor, Osehodion and Anolu in each of the group respectively. 

In creating a user, I used the command line `sudo useradd "username"`. Why did I use sudo? Because the vagrant is a sudoer. I did this in all of the users created. After creating the users I also created a password for each user by using the command line `sudo passwd "username"` ("username" represent the name of the users above)

In creating the groups, I used the command line `sudo groupadd "groupname"`. (Again "groupname" represent the names of groups above)

To the tricky part, adding the groups created to sudoers. This was a bit the most challenging of the exercise, that is, finding the command that should be used without having to edit the `/etc/sudoers.d` file directly because I heard that doing such and making errors will crash the linux system . After lenghty search and a help from a few colleagues, I found the command line it is as thus; `sudo visudo -f /etc/sudoers.d/ "groupname" `  and it took me to the /etc/sudoers.d and I didn't have to edit the file directly. 

On the final part, it was instructed that the contents of /etc/group, /etc/sudoers.d, and /etc/passwd which are in this folder. 