Vh Script
=======
This a small and simple script to automate the manual work of creating virtual host in apache2. It has been developed and tested on Ubuntu.

## Setup 

  * Clone the repository `https://github.com/iloveyii/vh.git`.
  * Move the script to user/local/bin  `mv vh /usr/local/bin`.
  * Make the script executable `sudo chmod 755 /usr/local/bin/vh`.
  * Verify if the script can be run `which vh`. and it should show `/usr/local/bin/vh`.

## How to use the script

Let say we want to create a virtual host: http://mywebsite.loc. To use the script open a terminal and run it like :
```
sudo vh new mywebsite -p project-directory-path/index.php
```
Where 'mywebsite' is the name of your virtual host and '-p' specifies the path to web root directory.

Now you should be able to browse to [http://mywebsite.loc](http://mywebsite.loc)
   
<i>DevOps has never been so cool.</i>  
[Hazrat Ali](http://blog.softhem.se/) 
