packer {
  required_plugins {
    docker = {
      version = ">= 0.0.7"
      source  = "github.com/hashicorp/docker"
    }
  }
}

source "docker" "centos" {
  image  = "centos:latest"
  commit = true
}

build {
  name    = "centos-docker-image"
  sources = ["source.docker.centos"]
  provisioner "shell" {
    inline = ["echo 'Building Docker image for centos'"]
  }
}
