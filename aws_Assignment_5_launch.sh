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
	
#chmod 755 ../Environment-setup/aws_Assignment_5_install-env.sh

aws ec2 run-instances --image-id $1 --count $2 --instance-type $3 --security-group-ids $4 --subnet-id $5 --key-name $6  --user-data file://../Environment-setup/aws_Assignment_5_install-env.sh --associate-public-ip-address --debug


# creating s3 bucket and move images into the bucket for web display
aws s3 mb s3://Student_yzln1878_AS5_S3_Bucket_Pls_Delete_Me_After_Testing
# permission control of repo img
chmod 755 hahaDino.png
# move the image to newly created s3 bucket
aws s3 cp hahaDino.png s3://Student_yzln1878_AS5_S3_Bucket_Pls_Delete_Me_After_Testing --acl public-read