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
