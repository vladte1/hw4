Hometask #4 (12/10)
AWS task:
- create AWS ec2 instance using ubuntu 22.04 image ami-053b0d53c279acc90
- create user “adminuser”
- set password for “adminuser” (in secure way! see documentation)
- grant for “adminuser” sudoer permission
- create user “poweruser”
- allow poweruser login without password (see /etc/passwd manual)
- grant for “poweruser” permission for iptables command (see /etc/sudoers
  man)
- allow ONLY “poweruser” to read home directory of “adminuser”
- create softlink to file /etc/mtab in poweruser home directory (see ln manual)

## How to start: 
aws ec2 run-instances \
--image-id ami-01bc990364452ab3e \
--count 1 \
--instance-type t2.micro \
--region us-east-1 --output json

ssh to instance and run commands from script user.sh
