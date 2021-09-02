# See https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs

# Set the variable value in *.tfvars file
# or using the -var="hcloud_token=..." CLI option
# See https://colinwilson.uk/2020/10/31/generate-an-api-token-in-hetzner-cloud/
variable "hcloud_token" {
  sensitive = true # Requires terraform >= 0.14
}

# Configure the Hetzner Cloud Provider
terraform {
  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
      version = "~> 1.13"
    }
  }
}

provider "hcloud" {
  token = var.hcloud_token
}

# See https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/server
#resource "hcloud_server" "node1" {
#  name = "node1"
#  image = "ubuntu-20.04"
#  server_type = "cx11"
#}

# See https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/ssh_key
#resource "hcloud_ssh_key" "default" {
#  name = "default"
#  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAcyyRVA24vQioF2F53uOqnDADxOfX3l++o5GDRMb90/ hetzner_zexa@grayplane"
#}

#resource "hcloud_server" "node2" {
#  name = "node2"
#  image = "ubuntu-20.04"
#  server_type = "cx11"
#  ssh_keys = [
#    "default"
#  ]
#}

