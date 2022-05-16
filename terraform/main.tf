module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jm.pcloud22+dev_env@gmail.com"
    AccountName               = "Development"
    ManagedOrganizationalUnit = "Application_Environment"
    SSOUserEmail              = "jm.pcloud22+dev_env@gmail.com"
    SSOUserFirstName          = "jm"
    SSOUserLastName           = "pcloud22"
  }

  account_tags = {
    "Environment" = "Development"
  }

  change_management_parameters = {
    change_requested_by = "Joe M"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "Application_Development"
}
