## Prerequisites:  

Before you begin, ensure the following:
* Your Samba server is already running.
* You have a valid shared folder configured in smb.conf.
* Your Android device is connected to the same network (Wi-Fi) as the Samba server.
* Solid Explorer is installed.

---

## Step-by-Step Instructions:
1. Install and Open Solid Explorer, Launch the app and go to the main storage view.

2. Tap the "⋮" Menu > Add Storage, Choose New cloud connection or Add network location.

3. Select SMB/CIFS, This is the protocol used by Samba servers. Select it to proceed.

4. Enter Server Details.
    *Hostname / IP Address: Input the IP address of your Samba server (e.g. 192.168.1.50) #use ip a command to see ip address.

Share Name:
Enter the name of the shared folder (e.g. Public or Private depending on your setup in smb.conf).

5. Authentication (if required):
Username: Your Samba user (e.g. nasuser)

Password: The password set via smbpasswd

If you're connecting to a guest share (guest ok = yes), you can skip credentials.

6. Test Connection.
Tap "Next" or "Connect" to test the connection.
If everything’s configured correctly, you’ll see the contents of your shared folder.
