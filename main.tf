terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "2.11.0"
    }
  }
}

resource "docker_image" "nginx" {
  name = "nginx:1.7.8"
}

resource "docker_image" "tools" {
  name = "lukasmrtvy/tools:latest@sha256:732d70b72f93b06fb202bd5c464d7b0e2c5c3fc6559456622af1535d64e79ea7"
}

module "consul" {
  source  = "hashicorp/consul/aws"
  version = "0.0.5"
  servers = 3
}
