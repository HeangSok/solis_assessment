provider "google" {
  project = "Soli-Assessment"
  region  = var.region
}

/*====
Create Cloud Network
====*/
module "cloud_network" {
    source = "./modules/vpc_network"
    env = var.env
     region= var.region
network_name = var.network_name
subnet_name = var.subnet_name
 subnet_cidr    = var.subnet_cidr
 
}

/*====
Create Compute Engine
====*/
module "compute_engine" {
  source = "./modules/compute_engine"
  env = var.env
  instance_name = var.instance_name
  network_id     = module.gcp_network.vpc_id
  subnet_id      = module.gcp_network.subnet_id
  startup_script = var.startup_script

  depends_on = [ module.cloud_network ]
}

/*====
Create Cloud Storage
====*/
module "cloud_storage" {
    source = "./modules/cloud_storage"
  env = var.env
  name = var.bucket_name
}

# Other code ...