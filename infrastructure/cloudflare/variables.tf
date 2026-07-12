variable "cloudflare_api_token" {
  description = "Cloudflare API token (Access: Apps and Policies Edit)"
  type        = string
  sensitive   = true
}

variable "cloudflare_account_id" {
  description = "Cloudflare account ID"
  type        = string
}

variable "access_allowed_emails" {
  description = "Emails allowed to authenticate via Cloudflare Access"
  type        = list(string)
}
