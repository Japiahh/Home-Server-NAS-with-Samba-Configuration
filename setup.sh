#Install Samba
sudo apt update && sudo apt upgrade
sudo apt install samba

#Create directory
mkdir /home/#users/#folders

#access to all users
chmod 777 /home/#users/#folders

#file access (configuration in config/smb.conf) /etc/samba/smb.conf
sudo nano /etc/samba/smb.conf

#restart
sudo systemctl restart smbd

#to add Linux users and Samba password
sudo adduser #users

sudo smbpasswd -a #users

