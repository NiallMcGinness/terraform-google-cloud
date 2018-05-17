
provider "google" {
  
  project     = "<PROJECT-ID>"
  region      = "us-west1"
}

resource "google_compute_instance" "default" {
  count    =  1
  name     =  "instance-${count.index}"
  machine_type = "n1-standard-1"
  zone         = "us-west1-a"

 boot_disk {
    initialize_params {
      image = "debian-cloud/debian-8"
    }
  }

metadata_startup_script = "echo test written in terraform script > /test.txt"

  network_interface {
    network = "default"

  }
  // adding blanmk access_config will create an ephemeral public ip 
  access_config {   }
}