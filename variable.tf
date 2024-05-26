variable "credentials" {
    default = "terraform-gcp.json"
}

variable "project" {
    default = "rafi-sandbox-rafi"
}

variable "region" {
    default = "us-west1"
}

variable "zone" {
    default = "us-west1-a"
}

variable "instance_zone" {
    default = "us-west1-a"
}
variable "instance_name" {
    default = "testinstance"
}

variable "instance_image" {
    default = "debian-cloud/debian-11"
}

variable "instance_type" {
    default = "n2-standard-2"
}

variable "instance_tags" {

}

variable "network_name" {
    default = "testnetwork"
}

variable "subnetwork_name" {
    default = "testsubnetwork"
}

variable "subnetwork_region" {
    default = "us-west1"
}

variable "subnetwork_ip_cidr_range" {
    default = "10.130.0.0/20"
}