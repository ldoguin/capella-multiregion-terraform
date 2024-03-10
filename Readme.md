# multi-region

## env variable

      TF_VAR_auth_token=Capella_Token_secret
      TF_VAR_organization_id=aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa
      TF_VAR_project_name=terraform-couchbasecapella-project
      TF_VAR_project_id=aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa
      TF_VAR_cloud_provider_name=aws
      TF_VAR_cloud_provider_region=us-east-1
      TF_VAR_cluster_id=aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa

## Step0 - init
### Provision project

      terraform.exe -chdir="project" init -var-file="..\cluster.tfvars"
      terraform.exe -chdir="project" apply -var-file="..\cluster.tfvars"

### get project id
      terraform.exe -chdir="project" output project_id

### create cluster
      terraform.exe -chdir="cluster" init -var-file="..\cluster.tfvars"  
      terraform.exe -chdir="cluster" apply -var-file="..\cluster.tfvars"

### get cluster id
      terraform.exe -chdir="cluster" output cluster_id

### create bucket

      terraform.exe -chdir="bucket" init -var-file="..\bucket.tfvars"
      terraform.exe -chdir="bucket" apply -var-file="..\bucket.tfvars" 

### create credentials

      terraform.exe -chdir="database_credentials" init -var-file="..\credentials.tfvars"
      terraform.exe -chdir="database_credentials" apply -var-file="..\credentials.tfvars"

### Provision app


## Step 1 - clone env

### create cluster

      terraform.exe -chdir="cluster2" init -var-file="..\cluster.tfvars"
      terraform.exe -chdir="cluste2r" apply -var-file="..\cluster.tfvars"

      terraform.exe -chdir="cluster2" output cluster_id

### create bucket

      terraform.exe -chdir="bucket" init -var-file="..\bucket.tfvars"
      terraform.exe -chdir="bucket" apply -var-file="..\bucket.tfvars"

### create credential

      terraform.exe -chdir="database_credentials" init -var-file="..\credentials.tfvars"
      terraform.exe -chdir="database_credentials" apply -var-file="..\credentials.tfvars"

