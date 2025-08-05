#Install Samba
sudo apt update && sudo apt upgrade
sudo apt install samba

#Create directory
mkdir /home/#users/#folders

#access to all users
chmod 777 /home/#users/#folders

#file access (configuration in config/smb.conf)
sudo nano /etc/samba/smb.conf

#restart
sudo systemctl restart smbd

#to add Linux users and Samba password
sudo adduser #users

sudo smbpasswd -a #users

#users access
sudo chown #users:#users /home/#users/#folders
sudo chmod 770 /home/#users/#folders
sudo systemctl restart smbd

#status, log,and test
systemctl status smbd.service
journalctl -xe | grep smbd
testparm

#firewall
sudo ufw allow samba
sudo ufw reload

#users checking
sudo pdbedit -L -v
sudo pdbedit -v #users
sudo nano /etc/samba/smb.conf
