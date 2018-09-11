
apt-
Ubuntu's package manager, apt.
 A package manager allows us to install most software pain-free from a repository maintained by Ubuntu.


Login into EC2 using IP address,
Installation order -> apache, sql, php, node.js, npm, php-modules, cloning

php 7.1
node.js v8.11 minimum -8.13(comes with npm)
Git


IP address of instance: XXXXXXX

Chmod 400 changes permission of the object that makes it harder to access

Ssh login example:
ssh -i FinretAWS.pem root@XXXXXXX

ssh -i FinretAWS.pem ubuntu@XXXXXXX

sudo apt-get update - updates all the security updates for linux, and other things

After allowing, ports 80 and 443 tcp

Access the server on your own machine

http://your_server_IP_address


* sudo bash nodesource_setup.sh
The PPA will be added to your configuration and your local package cache will be updated automatically. After running the setup script from nodesource, you can install the Node.js package in the same way you did above:
*


ubuntu@ip-XXXXXXX:~$ cd /var/www
ubuntu@ip-XXXXXXX:/var/www$ ls
When cloning off git

sudo chown -R www-data:www-data <DIRNAME> changes ownership to root, so I have write permissions

sudo chown -R www-data:www-data XXXXXX


https://ayesh.me/Ubuntu-PHP-7.1 7.1 PHP uBUNTU + modules


npm run local - on first run, install all the web assets including react, etc

Leave? How to leave
