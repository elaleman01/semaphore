terraform {
  required_providers {
    fortios = {
      source  = "fortinetdev/fortios"
    }
  }
}
# Configure the FortiOS Provider
provider "fortios" {
hostname = "192.168.203.1"
token = var.api_token
insecure = "true"
}
resource "fortios_system_setting_dns" "dns1" {
primary = "4.2.2.1"
secondary = "8.8.8.8"
}
