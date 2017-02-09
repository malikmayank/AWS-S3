#!/bin/bash

#update the kernel and apply all the security patches
yum update -y 

#install apache 2.4, PHP 5.6, and git
yum install httpd24 php56 git -y

#start apache service
service httpd start

#make sure apache service stays on after server reeboot
chkconfig httpd on
cd /var/www/html
echo "<?php phpinfo();?>" > test.php
git clone https://github.com/malikmayank/AWS-S3