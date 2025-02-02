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

# Configure the FortiOS Provider
provider "fortios" {
hostname = "$host"
token = "r5bm6wbhw9kc4dzpGkz8xdcbb453hk"
insecure = "true"
}
resource "fortios_system_setting_dns" "dns1" {
primary = "4.2.2.1"
secondary = "8.8.8.8"
}
