# <span style="color:dodgerblue;">Solis-Assessment</span>
## <span style="color:dodgerblue;">How to Preview README.md in Vscode When Editing</span>
````bash
cmd + shift + v
````
## <span style="color:dodgerblue;">Project Overview</span>
GCP infrastructure for a sample web application 

This Terraform code is designed for three main environments: Development (dev), Staging (stage), and Production (prod). This setup is a good way to keep things organized and make sure everything works smoothly from testing to the final live version.

#### <span style="color:dodgerblue;">NOTE:</span> It is required to show that this candidate understand terraform work. There is no rigth or wrong  answer here. 
- Date: 29 Feb 2024
- Start Exam: 2:30pm
- Stop Exam: 3:30pm


## <span style="color:dodgerblue;">Infrastructure as Code (iac)</span>


### <span style="color:dodgerblue;">Requirments:</span>
- Terraform vervsion <span style="color: #65B741;">`>= 1.0.11`</span>
- GCP provider <span style="color: #65B741;">`>= 3.5.0, < 4.0.0`</span>

- <span style="color: #65B741;">Please navigate to GCP bucket and create bucket that have the same name as stated in dev.config | release.config | prod.config depending on our deployment environment</span>


- Go to vars/prod.tfvars for __**production environment**__ and make changes based on your working environment
- Go to vars/stage.tfvars for __**staging environment**__ and make changes based on your working environment
- Go to vars/dev.tfvars for __**development environment**__ and make changes based on your working environment

### <span style="color:dodgerblue;">Usages:</span>

- To initialize Terraform for each environment:
````bash 
terraform init -input=false -reconfigure --backend-config=config/dev.config    
# or
terraform init -input=false -reconfigure --backend-config=config/stage.config 
# or 
terraform init -input=false -reconfigure --backend-config=config/prod.config 
````
- To plan Terraform for each environment:
````bash
terraform plan -lock=false -input=false -var-file=vars/dev.tfvars
# or
terraform plan -lock=false -input=false -var-file=vars/stage.tfvars 
# or 
terraform plan -lock=false -input=false -var-file=vars/prod.tfvars 
````
- To apply|deploy Terraform for each environment
````bash
terraform apply -lock=false -input=false -auto-approve -var-file=vars/dev.tfvars
# or
terraform apply -lock=false -input=false -auto-approve -var-file=vars/stage.tfvars
# or
terraform apply -lock=false -input=false -auto-approve -var-file=vars/prod.tfvars
````

#### <span style="color:dodgerblue;">Using Make:</span>

<span style="color: coral;">Recommendation:</span> it is highly recommended to use `make` command in our ci/cd processes.
````bash
# Display help information
make help

# Prettify terraform files
make fmt

# Initialize Terraform configuration
make init PROFILE=dev CONFIG_FILE=config/dev.config
# or
make init PROFILE=stage CONFIG_FILE=config/stage.config
# or
make init PROFILE=prod CONFIG_FILE=config/prod.config

# Plan Terraform changes
make plan PROFILE=dev VARS_FILE=vars/dev.tfvars
# or 
make plan PROFILE=stage VARS_FILE=vars/stage.tfvars
# or 
make plan PROFILE=prod VARS_FILE=vars/prod.tfvars

# Destroy Terraform managed infrastructure
make destroy PROFILE=dev VARS_FILE=vars/dev.tfvars
# or 
make destroy PROFILE=stage VARS_FILE=vars/stage.tfvars
# or 
make destroy PROFILE=prod VARS_FILE=vars/prod.tfvars
````

## Source Code (src)
### Requirements:
`Python 3.10.8`

### Usages:
More Information .........
