packer {
  required_plugins {
    amazon = {
      version = ">= 0.0.4"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

source "amazon-ebs" "debian" {
  ami_name      = "packer-example debian"
  instance_type = "t2.micro"
  region        = "us-west-2"
  source_ami    = "ami-12345678"
  ssh_username  = "ubuntu"
}

build {
  name    = "debian-ami"
  sources = ["source.amazon-ebs.debian"]
  provisioner "shell" {
    inline = ["echo 'Building AMI for debian'"]
  }
}
