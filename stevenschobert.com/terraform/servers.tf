provider "digitalocean" {
    token = "${var.digital_ocean_key}"
}

resource "digitalocean_droplet" "web" {
    image = "docker"
    name = "endor"
    region = "nyc2"
    size = "1gb"
    ssh_keys = [612580]
}
