#!/bin/bash


#list s3 buckets
echo "list of buckets"
aws s3 ls

#list EC2 instances#

echo "list of ec2 instances"

echo " public ip address"
 aws ec2 describe-instances | jq -r '.Reservations[].Instances[] | select(.State.Name == "running") | .NetworkInterfaces[].Association.PublicIp'

 echo "instance id"

 aws ec2 describe-instances | jq -r '.Reservations[].Instances[] | select(.State.Name == "running") | .InstanceId'

#list lambda functions#
echo "list of lambda functions"

aws lambda list-functions


#list IAM users#

echo "list of users"
aws iam list-users
