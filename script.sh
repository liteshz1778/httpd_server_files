# accessing User-Defined ENV Variables
echo "Hi, this is  {Name} &  work as {Work}"

echo -e "\n"

# Copy files to /var/www/html directory
sudo cp -rf * /var/www/html
# Not used -v flag for verbose

echo -e "\n"

# accessing server
echo "Code deployed on $(hostname -i) server"

echo -e "\n"

# accessing built-in ENV Variables
echo "Job Name: $JOB_NAME" 
echo "Build ID: $BUILD_ID"
