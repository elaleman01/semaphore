# Configure the FortiOS Provider
provider "fortios" {
hostname = "192.168.203.1"
token = "r5bm6wbhw9kc4dzpGkz8xdcbb453hk"
}
resource "fortios_system_setting_dns" "dns1" {
primary = "4.2.2.2"
secondary = "8.8.8.8"
}
