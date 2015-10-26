# Launch-setup

The sequence of the revised arguements for MP-1 is:
// cat launch.sh result:
run-instances --image-id $1 --count $2 --instance-type $3 --security-group-ids $4 --subnet-id $5 --key-name $6  --associate-public-ip-address --iam-instance-profile $7

image-id  -> $1
count	-> $2
instance-type	-> $3
security-group-ids 	->$4
subnet-id	->$5
key-name	->$6
iam-instance-profile        ->$7


pls test based on this arg. sequence
