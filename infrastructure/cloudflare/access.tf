resource "cloudflare_zero_trust_access_application" "actual_budget" {
  account_id            = var.cloudflare_account_id
  name                  = "Actual Budget"
  domain                = "budget.disablak.xyz"
  type                  = "self_hosted"
  session_duration      = "168h"
  app_launcher_visible  = false

  policies = [{
    name       = "Only me"
    decision   = "allow"
    precedence = 1
    include = [for email in var.access_allowed_emails : {
      email = { email = email }
    }]
  }]
}
