#!/bin/bash

# Get the current hour
current_hour=$(date +'%H')

# Check if it's 7 PM
if [ "$current_hour" -eq 19 ]; then
  # Retrieve the instance IDs of running instances
  instance_ids=$(aws ec2 describe-instances --filters "Name=instance-state-name,Values=running" --query "Reservations[].Instances[].InstanceId" --output text)

  # Stop the instances
  aws ec2 stop-instances --instance-ids $instance_ids

  echo "EC2 instances shut down successfully."
else
  echo "It's not 7 PM yet. No action taken."
fi
