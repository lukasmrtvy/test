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

resource "docker_image" "tools" {
  name = "lukasmrtvy/tools:latest@sha256:002de234d8431b9ede0a9e69e2f955b77fe44049221bf8ec8cd0ee11083f5413"
}

module "consul" {
  source  = "hashicorp/consul/aws"
  version = "0.0.5"
  servers = 3
}
