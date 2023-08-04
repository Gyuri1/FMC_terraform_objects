terraform {
  required_providers {
    fmc = {
      source = "CiscoDevNet/fmc"
      # version = "0.1.1"
    }
  }
}

provider  "fmc" {
  fmc_username=var.fmc_username
  fmc_password=var.fmc_password
  fmc_host=var.fmc_host
  fmc_insecure_skip_verify=var.fmc_insecure_skip_verify
}


locals {
  rg =csvdecode(file("./objs.csv"))
}


###
# CREATE OBJECTS
###

resource "fmc_host_objects" "newHostObj1" {
  for_each = { for rg in local.rg: rg.Name => rg}
  name= each.value["Name"]
  value = each.value["Value"]
  description = "1st test object from terraform" 
}

output "fmc_host_objects_tumb_220" {
  value = fmc_host_objects.newHostObj1  
}