module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jm.pcloud22+dev_env@gmail.com"
    AccountName               = "Test"
    ManagedOrganizationalUnit = "Application_Environment"
    SSOUserEmail              = "jm.pcloud22+dev_env@gmail.com"
    SSOUserFirstName          = "jm"
    SSOUserLastName           = "pcloud22"
  }

  account_tags = {
    "Environment" = "Test"
  }

  change_management_parameters = {
    change_requested_by = "Joe M"
    change_reason       = "Adding a Test Environment"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "Application_Testing"
}i
