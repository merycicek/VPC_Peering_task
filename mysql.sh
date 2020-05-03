    #! /bin/bash
    sudo yum install mariadb-server -y
	sudo systemctl start mariadb
    sudo systemctl enable mariadb