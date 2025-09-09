**_change the permission of key_**
e.g chmod 400 web-key-lu.pem

**_SSH into the server. Connecting to the server_**

- ssh -i <keypair> username@server-hostname
  e.g: ssh -i web-key-lu.pem ubuntu@54.219.173.134

**_Update the server_**
sudo apt update

**_Install Apache Web Server_**
sudo apt install apache2
