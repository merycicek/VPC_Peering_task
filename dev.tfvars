 vpc_cidr = "192.168.0.0/16"
 region = "us-east-2"
 region_name = "Ohio"

 ami = "ami-0f7919c33c90f5b58"


# This is used for VPC CIDR BLOCK 

# cidr_block = "192.168.0.0/16"

public_cidr1 = "192.168.1.0/24"
public_cidr2 = "192.168.2.0/24"
public_cidr3 = "192.168.3.0/24"

az1          = "a"
az2          = "b"
az3          = "c"


private_cidr1 = "192.168.11.0/24"
private_cidr2 = "192.168.12.0/24"
private_cidr3 = "192.168.13.0/24"


tags = {
    Name = "VPC_Project"
    Envirement = "Dev"
    Team = "DevOps"
    Created_by = "Meryem"
    Department = "IT"
    Bill = "CFO"
}

owner_profile ="510941922340" 
owner_vpc_id ="vpc-0ee1b80da8ee5a7d9"
accepter_profile ="514430043235"
accepter_vpc_id ="vpc-06f284ad983d45f5d" 