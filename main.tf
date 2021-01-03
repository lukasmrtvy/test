terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "2.8.0"
    }
  }
}

resource "docker_image" "nginx" {
  name = "nginx:1.7.8"
}

module "consul" {
  source  = "hashicorp/consul/aws"
  version = "0.0.5"
  servers = 3
}
