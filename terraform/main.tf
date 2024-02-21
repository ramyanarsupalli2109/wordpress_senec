# main.tf

provider "hcloud" {
  token = var.hcloud_token
}

resource "hcloud_server" "servers" {
  count = 4
  
  name  = "web${count.index + 1}"
  type  = "cx21"

  labels = {
    "type" = "web"
  }

  ipv4_address = "10.0.0.${count.index + 1}"
}
