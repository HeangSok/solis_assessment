/*====
Common Variables
====*/
env    = "stage"
# Change the region according to your deployment environment 
# Change the region according to your deployment environment 
region = "us-central1"

network_name = "my-vpc-network"
subnet_name = "my-subnet"
subnet_cidr = "10.0.0.0/16"

/*====
Create Compute Engine
====*/
instance_name = "my-instance-name"
startup_script = "../src/my_script.sh"
/*====
Create Cloud Storage
====*/
bucket_name = "my-unique-bucket-name"