# AWS ASSIGNMENT 5 RESUBMISSION LAUNCH SHELL
# testing arguements sequence with examples:
# image-id:				ami-d05e75b8
# count: 				1
# instance-type: 		t2.micro
# security-group-ids:	sg-c0f45da6
# subnet-id:			subnet-833692be
# key-name:				KeyPair_2015OCT

# cli syntax for fast arguements validations:
# aws ec2 run-instances --image-id ami-d05e75b8 --count 1 --instance-type t2.micro --key-name KeyPair_2015OCT.pem --security-group-ids sg-c0f45da6 --subnet-id subnet-833692be --associate-public-ip-address
	

aws ec2 run-instances --image-id $1 --count $2 --instance-type $3 --security-group-ids $4 --subnet-id $5 --key-name $6  --associate-public-ip-address --debug
