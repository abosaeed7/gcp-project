variable "regoin" {
  default = "us-central1"
}
variable "network_name" {
    type = string
    default = "gke-network"
}

variable "public_subnet_name" {
    type = string
    default = "managment-subnet"
}

variable "private_subnet_name" {
    type = string
    default = "restricted-subnet"
}

variable "router_name" {
    default = "router-gke"
}

variable "nat_cloud" {
    type = string
    default = "nat-gke"
}

variable "vm_type" {
    type = string
    default = "e2-small"
}