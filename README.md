# FMC_terraform_objects

This terraform template demonstrates how to add objects from a CSV file.


This is the expected output:

```
> terraform apply                 

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # fmc_host_objects.newHostObj1["test_host_1"] will be created
  + resource "fmc_host_objects" "newHostObj1" {
      + description = "1st test object from terraform"
      + id          = (known after apply)
      + name        = "test_host_1"
      + type        = (known after apply)
      + value       = "10.1.1.1"
    }

  # fmc_host_objects.newHostObj1["test_host_2"] will be created
  + resource "fmc_host_objects" "newHostObj1" {
      + description = "1st test object from terraform"
      + id          = (known after apply)
      + name        = "test_host_2"
      + type        = (known after apply)
      + value       = "10.1.1.2"
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + fmc_host_objects_tumb_220 = {
      + test_host_1 = {
          + description = "1st test object from terraform"
          + id          = (known after apply)
          + name        = "test_host_1"
          + type        = (known after apply)
          + value       = "10.1.1.1"
        }
      + test_host_2 = {
          + description = "1st test object from terraform"
          + id          = (known after apply)
          + name        = "test_host_2"
          + type        = (known after apply)
          + value       = "10.1.1.2"
        }
    }

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

fmc_host_objects.newHostObj1["test_host_2"]: Creating...
fmc_host_objects.newHostObj1["test_host_1"]: Creating...
fmc_host_objects.newHostObj1["test_host_2"]: Creation complete after 3s [id=00505697-6820-0ed3-0000-012884986607]
fmc_host_objects.newHostObj1["test_host_1"]: Creation complete after 4s [id=00505697-6820-0ed3-0000-012884986625]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

fmc_host_objects_tumb_220 = {
  "test_host_1" = {
    "description" = "1st test object from terraform"
    "id" = "00505697-6820-0ed3-0000-012884986625"
    "name" = "test_host_1"
    "type" = "Host"
    "value" = "10.1.1.1"
  }
  "test_host_2" = {
    "description" = "1st test object from terraform"
    "id" = "00505697-6820-0ed3-0000-012884986607"
    "name" = "test_host_2"
    "type" = "Host"
    "value" = "10.1.1.2"
  }
```

