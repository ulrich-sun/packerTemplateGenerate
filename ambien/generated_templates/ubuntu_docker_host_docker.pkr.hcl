packer {
  required_plugins {
    docker = {
      version = ">= 0.0.7"
      source  = "github.com/hashicorp/docker"
    }
  }
}

source "docker" "ubuntu" {
  image  = "ubuntu:latest"
  commit = true
}

build {
  name    = "ubuntu-docker-image"
  sources = ["source.docker.ubuntu"]
  provisioner "shell" {
    inline = ["echo 'Building Docker image for ubuntu'"]
  }
}
