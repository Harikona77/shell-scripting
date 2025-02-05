# shell-scripting steps


aws ec2 describe-instances | jq -r '.Reservations[].Instances[] | select(.State.Name == "running") | .NetworkInterfaces[].Association.PublicIp'

aws ec2 describe-instances | jq -r '.Reservations[].Instances[].NetworkInterfaces[].Association.PublicIp'

aws ec2 describe-instances | jq -r '.Reservations[].Instances[] | select(.State.Name == "running") | .InstanceId'


