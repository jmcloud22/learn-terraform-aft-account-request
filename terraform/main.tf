module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jm.pcloud22+networkdev@gmail.com"
    AccountName               = "Networkdev"
    ManagedOrganizationalUnit = "sandbox"
    SSOUserEmail              = "jm.pcloud22@gmail.com"
    SSOUserFirstName          = "jm"
    SSOUserLastName           = "pcloud22"
  }

  account_tags = {
    "Environment" = "Dev"
  }

  change_management_parameters = {
    change_requested_by = "Joe M"
    change_reason       = "Adding a networking Dev Environment"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "NetworkingDev"
}
