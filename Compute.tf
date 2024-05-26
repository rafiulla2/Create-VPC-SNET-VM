resource "google_compute_network" "testnetwork" {
name = "${var.network_name}"
auto_create_subnetworks = "false"
}

#create subnet subnetwork
resource "google_compute_subnetwork" "testsubnet" {
    name = "${var.subnetwork_name}"
    region = "${var.subnetwork_region}"
    network = "${google_compute_network.testnetwork.self_link}"
    ip_cidr_range = "${var.subnetwork_ip_cidr_range}"
}

resource "google_compute_instance" "vm_instance" {
    name = "${var.instance_name}"
    zone = "${var.instance_zone}"
    machine_type = "${var.instance_type}"
    tags = ["${var.instance_tags}"]
    boot_disk {
        initialize_params {
            image = "${var.instance_image}"
        }
    }
    network_interface {
        subnetwork = "${google_compute_subnetwork.testsubnet.self_link}"
    }
    network_interface {
        subnetwork = "default"
    }
}