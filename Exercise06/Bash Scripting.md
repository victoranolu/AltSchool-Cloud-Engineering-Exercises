# Bash Scripting Lesson

Continuing on my journey to being a cloud engineer, the new lesson is about how to write a Script or Bash Scripting. Bash Scripting is an important part of process automation in Linux. Scripting helps one write a sequence of commands in a file and then execute the. This saves one time because one don't have to write commands again and again. One can perform daily tasks efficiently and even schedule them for automatic execution. 

In writing a script, it has to be identified with a `shebang`. A `Shebang` is a combination of bash '#' and bang '!' followed by the bash shell path. This is the first line of the script. An example;

<pre><code> #! /bin/bash </code></pre>

Scripts also has execution rights for the user executing them. An execution right is represented by `x`. Like the file permission class i had about read, write and execute.

Then came the basic syntax of Bash Scripting. How to use arithmethic expressions, how to run a bash script by using the command `bash` then followed by the script path `read` user inputs, numeric comparison logical operators, conditional statements, variables etc.
# Cron Jobs

Cron is a job scheduling utility. One can schedule jobs to execute daily, weekly, monthly, or in a specifice time of the day. Automation in Linux relies on cron jobs. Below is the syntax to schedule crons:

<pre><code> #Cron job example
* * * * * bash /path/to/script</code></pre>

Here, * represent minutes, hour(s), month(s), weekday(s). Using the command `crontab -l` it will list the already schedule of scripts for a particular user. Using command `crontab -e` will allow a user to edit a cron job to a specific timing.

# Exercise

On the exercise I was given a work to write a bash script that run at every hour saving RAM memory usage to a file and at midnight it sends the content of the file to an email address. In undertaking this exercise, I had to open an account in [Mail Trap](https://mailtrap.io), started a new project, renamed the project and opened a free inbox account and then install SSMTP and MailUtils on my vagrant machine. I edited the SSMTP configuration file using the command `nano /etc/ssmtp/ssmtp.conf`. Adding the Mail Trap credentials on the configuration file. Inside this folder is the bash script, the cron job and screenshots of the mail in my inbox showing the content of the file. 

# Conclusion

It was the most challenging task yet in this journey. What was the major issue was writing the logic for the script to send a mail at midnight. Staying late at night to make sure the mail sent at the time because once one logs out I doubt the scripts execute. I am still trying to find out why it is so being that it suppose to be automated. Another challenge was the sending of file through mail. But i was able to just `cat` the content through the mail. I have learnt a lot about automation and would be able to upskill in the coming days. 