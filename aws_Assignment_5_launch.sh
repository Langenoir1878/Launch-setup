# AWS ASSIGNMENT 5 RESUBMISSION LAUNCH SHELL
# testing arguements sequence with examples:
# image-id:			
# count: 			1
# instance-type: 	
# security-group-ids:
# subnet-id:
# key-name:
	

aws ec2 run-instances --image-id $1 --count $2 --instance-type $3 --security-group-ids $4 --subnet-id $5 --key-name $6  --associate-public-ip-address --debug
