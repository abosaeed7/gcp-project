# Project python-application
provisioning full gke infrastructure with terraform 

# components
- Network
- Management Subnemt
- Restricted Subnet
- Private Kluster
- Private VM
- Cloud NAT

# Dockerfile
Docker file contain python application .
## Note: Environment variables must be declared in the deplyment yaml file.

# After provisioning
* ssh into the private vm then connect to the kde.
* deploy redis 
* expose redis
* deploy python application
* expose application to public internet with a public HTTP load balancer

