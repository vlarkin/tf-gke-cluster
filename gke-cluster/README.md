## Deploying a GKE cluster

Everything can be easily set up with the provided commands below. 
Replace <PROJECT_ID> with your actual GCP project ID, <REGION> with the name of the region where you want to deploy the new infrastructure, and <BUCKET_NAME> with a unique name for storing the Terraform state file. 

```
export PROJECT_ID=<PROJECT_ID>
export REGION=<REGION>
export TERRAFORM_BUCKET_NAME=<BUCKET_NAME>

gcloud config set project ${PROJECT_ID}

gsutil mb -c standard -l ${REGION} gs://${TERRAFORM_BUCKET_NAME}
gsutil versioning set on gs://${TERRAFORM_BUCKET_NAME}

terraform init
terraform apply
```

After applying the Terraform code, you should get a Kubernetes cluster.
Connect to the cluster.

```
gcloud container clusters get-credentials demo --region europe-west1 --project skillful-fx-417519
```
