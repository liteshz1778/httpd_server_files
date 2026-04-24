#!/bin/bash

OUTPUT_FILE="./script_output/index.html"

{
echo "<html><body>"

echo "<h2>Deployment Info</h2>"

echo "<p>Hi, this is $Name & work as $Work</p>"
echo "<br>"

echo "<p>Code deployed on $(hostname -i) server</p>"
echo "<br>"

echo "<p>Job Name: $JOB_NAME</p>"
echo "<p>Build ID: $BUILD_ID</p>"

echo "</body></html>"
} > "$OUTPUT_FILE"
