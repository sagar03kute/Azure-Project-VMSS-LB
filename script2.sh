#!/bin/bash

apt update -y
apt install apache2 -y

systemctl start apache2
systemctl enable apache2

chmod 755 /var/www/html

HOSTNAME=$(hostname)

cat <<EOF > /var/www/html/index.html
<html>
  <head>
    <title>Azure VMSS Web Server</title>
  </head>
  <body style="font-family: Arial, sans-serif;">
    <h1>Azure VM Scale Set Web Server</h1>
    <p><strong>Hostname:</strong> $HOSTNAME</p>
    <p>Running on Azure VM Scale Set</p>
  </body>
</html>
EOF
