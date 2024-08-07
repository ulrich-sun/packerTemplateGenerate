packer {
  required_plugins {
    amazon = {
      version = ">= 0.0.4"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

source "amazon-ebs" "windows" {
  ami_name      = "packer-example windows"
  instance_type = "t2.micro"
  region        = "us-west-2"
  source_ami    = "ami-12345678"
  ssh_username  = "ubuntu"
}

build {
  name    = "windows-ami"
  sources = ["source.amazon-ebs.windows"]
  provisioner "shell" {
    inline = ["echo 'Building AMI for windows'"]
  }
}
