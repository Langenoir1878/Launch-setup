# Revised on OCT 25, 13:12:11 PM
# Yiming Zhang

# 1. execute the cleanup.sh
./cleanup.sh

# 2. declare an array in bash
declare -a instanceARR

# 3. mapfile???

aws ec2 run-instances --image-id $1 --count $2 --instance-type $3 --security-group-ids $4 --subnet-id $5 --key-name $6  --associate-public-ip-address --iam-instance-profile $7 --debug

echo ${instanceARR[@]}

# 4. wait cli
aws ec2 wait instance-running --instance-ids ${instanceARR[@]}

echo "instances are running."

# 5. create ELB

# 6. register instances with ELB

# 7. ELB health-check configuration

# 8. launch configuration

# 9. auto-scaling , copy codes from BB, $$$$$ to be added

aws autoscaling create-launch-configuration 

aws autoscaling create-auto-scaling-group --auto-scaling-group-name itmo-544-extended-auto-scaling-group-2 --launch-configuration-name itmo544-launch-config --load-balancer-name --health-check-type ELB --min-size 1 --max-size 3 --desired-capacity 2 --default-cooldown 600 --health-check-grace-period 120 --vpc-zone-identifier
