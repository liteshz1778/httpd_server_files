#!/bin/bash

# Copy files first
sudo cp -rf * /var/www/html

# Generate HTML
sudo cat <<EOF > ./script_output/index.html
<html>
<body>
<h2>Deployment Info</h2>
<p>Code deployed on $(hostname -i) server </p>
<br>
<a href="../index.html">Home Page</a>
</body>
</html>
EOF
