# Project Provision gke
provisioning  gke infrastructure with terraform on GCP.

# components
- Network
- Management Subnemt
- Restricted Subnet
- Private Kluster
- Private VM
- Cloud NAT

# Starting Installation
- before you satart make sure you provide inputs for all the variables in `variables.tf`.

- then run the following commands in your Terminal.

    `terraform init`

    `terraform plan`

    `terraform apply`

- now wait for couple of mints until it's done.

- ssh the private vm then install kubectl 
 
    `sudo apt-get install kubectl`
- connect to your cluster:

    `gcloud container clusters get-credentials <cluster-name> --region <region> --project <project-name>`

- vertify connetion by next command

    `kubectl get nodes`
# Dockerfile
- write Dockerfile for your application.

- build the image
    
    `docker build -t image-name .`
- tag image

    `docker tag busybox gcr.io/project-id/image-name`
- auth config docker:

    `gcloud auth configure-docker`


- push image to gcr

    `docker push gcr.io/project-id/image-name`

- provide your deployment.yaml the full path of the Image.

    [Image](https://drive.google.com/file/d/1jGh0KhH7TRnpt_go2vZz9e5dFWNhmwI0/view?usp=sharing)
    
- now upload deployment.yaml then run 

    `kubectl apply -f deployment.yaml`

- expose services the application need.


# Notes
- Environment variables can be declared in the deployment yaml file.
- make sure to create cloude storgae for terraform.tfstate.
- better to input variables in `vars.auto.tfvars`