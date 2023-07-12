# EC2Management
Bash Script to shut down all EC2 instances at 7pm every night automatically

Make the script file executable by running the following command in your terminal

chmod +x shutdown_ec2_instances.sh

Open the crontab file for editing by running the following command

crontab -e

Replace /path/to/shutdown_ec2_instances.sh with the actual path to your script file

0 19 * * * /path/to/shutdown_ec2_instances.sh
