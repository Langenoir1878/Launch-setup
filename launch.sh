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

# 5. create ELB (*** need final modification ***)
aws elb create-load-balancer --load-balancer-name $1 --listeners Protocol=HTTP,LoadBalancerPort=80,InstanceProtocol=HTTP,InstancePort=80 
# 6. register instances with ELB (*** need final modification ***)
aws elb register-instances-with-load-balancer --load-balancer-name $1 --instances ${instance_id[@]}
# 7. ELB health-check configuration (*** need final modification ***)
aws elb configure-health-check --load-balancer-name ...

# 8. launch configuration (*** need final modification ***)
aws autoscaling create-launch-configuration 
# 9. auto-scaling , codes from BB, $$$$$ to be added

aws autoscaling create-launch-configuration //$$$$$$ here, to be added later after finished the overall lectures review

aws autoscaling create-auto-scaling-group --auto-scaling-group-name itmo-544-extended-auto-scaling-group-2 --launch-configuration-name itmo544-launch-config --load-balancer-name --health-check-type ELB --min-size 1 --max-size 3 --desired-capacity 2 --default-cooldown 600 --health-check-grace-period 120 --vpc-zone-identifier
