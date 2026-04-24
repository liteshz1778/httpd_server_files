#!/bin/bash

# Copy files first
sudo cp -rf * /var/www/html

# Generate HTML
cat <<EOF > /var/www/html/index.html
<html>
<body>

<h2>Deployment Info</h2>

<p>Hi, this is $Name & work as $Work</p>

<p>Code deployed on $(hostname -i) server</p>

<p>Job Name: $JOB_NAME</p>
<p>Build ID: $BUILD_ID</p>

</body>
</html>
EOF
