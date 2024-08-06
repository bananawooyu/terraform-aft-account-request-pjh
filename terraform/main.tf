module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jaehyeun1995+infra@gmail.com"
    AccountName               = "aft-infra"
    ManagedOrganizationalUnit = "infra"
    SSOUserEmail              = "jaehyeun1995+infra@gmail.com"
    SSOUserFirstName          = "infra"
    SSOUserLastName           = "aft-"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
