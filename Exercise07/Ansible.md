# Ansible Lesson

Ansible is a tool that generates written instructions for automating IT work in system infrastructure. Ansible is designed for application deployment, configuration management, intra-service organisation and as a sysAdmin it is a tool one has to be comfortable using. Ansible is simple to install because it doesn't require any agent software or other security infrastructure. Ansible allows you to set up not just one machine or server or database but a complete network of them all at once and it doesn't require any programming knowledge.

# So How Does Ansible Work?

Ansible connects to nodes on a network, be it clients, servers, databases etc, and then send a little program called an Ansible module to each node. It then runs these modules through SSH and deletes them once they're done.  

# Ansible Architecture

Let's look at the Ansible  architecture and how it manages operations.

## Ansible Modules

Modules are short programs that Ansible distributes to all nodes or remote hosts from a central control workstation. Modules control things like services and packages and can be executed via `playbooks`. Ansible runs all of the modules needed to install updates or complete whatever operation is required and then removes them after they're done.

## Ansible Inventory

Ansible uses an inventory file to track which hosts are part of your infrastructure and then accesses them to perform commands and playbooks. Ansible works in parallel with various systems in your infrastructure. It accomplishes this by picking methods mentioned in Ansible's inventory file, which is saved in the host location. 

## Ansible Playbook

One can use Ansible playbooks to program applications, services, server nodes and other devices without starting from scratch. Ansible playbooks, along with the conditions, variables, and tasks included within them can be stored, shared and reused. Ansible playbooks function similarly to task manuals. They're simple `YAML` files. Playbooks are at the heart of what makes Ansible so good. 

# Exercise/Practice

In the exercise given, it state to create an Ansible playbook to set up a server with Apache. Host an index.php file with some content in it. Approaching this exercise, i had to first install the Ansible in my vagrant machine. First update the repository 

<pre><code> sudo apt update </code></pre> 
Then install the software properties;

<pre><code> sudo apt install software-properties-common </code></pre>

and install Ansible;

<pre><code> sudo apt-add-repository --yes --update ppa:ansible/ansible</code></pre>

then lastly run this;

<pre><code> sudo apt install ansible </code></pre>

In getting the servers I used I went to the [Digital Ocean](https://digitalocean.com) and created two droplets. Thanks to my github student developer pack i was able to get it. On my vagrant machine i created a new directory where it will my ansible inventory file and playbook. On my inventory file that was where it had the two IP addresses from digital ocean. Then i created the playbook yml file also located in this same folder.      

Before running the playbook I had to test if the connection with the ssh public keys to the IP addresses is a success or else none of these will work. 

On the Ansible folder, I made another directory called the phpfiles. In this directory i touched a file and named it the `index.php`. It is this file that holds the content php code that was asked from the exercise. In the ansible playbook, i had to copy the file into the /var/www/html directory so that it can load both apache homepage and the php rendered page.The screenshot of those pages are in the folder.

# Conclusion

This particular challenge wasn't as stressful as the previous exercise. I must say that the previous exercise was after my life. I should say that i am growing in trying to solve problems with patience and paying close attention to the problem and taking diligence in my work. With the help of online searching, a bit more targeted and direct, also in communication with my colleagues in the same journey with me. I am beginning to grow in confidence in my ability with the skills i am learning everyday. I also feel this is a rush journal but we move. See you in the next exercise. 