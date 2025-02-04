terraform {
  required_providers {
    fortios = {
      source  = "fortinetdev/fortios"
    }
  }
}

variable "host" {
  type      = string
  sensitive = true
}
variable "token" {
  type      = string
  sensitive = true
}

# Configure the FortiOS Provider
provider "fortios" {
hostname = var.host
token = var.token
insecure = "true"
}
resource "fortios_system_setting_dns" "dns1" {
primary = "8.8.8.8"
secondary = "8.8.1.1"
}
