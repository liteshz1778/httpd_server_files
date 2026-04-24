#!/bin/bash

# Copy files first
sudo cp -rf * /var/www/html
sudo chmod 777 /var/www/html/script_output/index.html

# Generate HTML
sudo cat <<EOF > /var/www/html/script_output/index.html
<html>
<body>
<h2>Deployment Info</h2>
<p>Code deployed on $(hostname -i) server </p>
<a href="../">Home Page</a>
</body>
</html>
EOF
