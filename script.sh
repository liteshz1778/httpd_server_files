#!/bin/bash

# Copy files first
sudo cp -rf * /var/www/html

# Generate HTML
sudo cat <<EOF > ./script_output/index.html
<html>
<body>
<h2>Deployment Info</h2>
<p>Code deployed on $(hostname -i) server </p>
</body>
</html>
EOF

sudo cat <<EOF >> ./script_output/index.html
<html>
<body>
<h2>Deployment Info</h2>
<p><a href="../">Home Page </a></p>
</body>
</html>
EOF
