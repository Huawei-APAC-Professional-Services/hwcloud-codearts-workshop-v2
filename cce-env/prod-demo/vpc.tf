resource "huaweicloud_vpc" "vpc" {
  name = "vpc-prod"
  cidr = "172.18.0.0/16"
}
resource "huaweicloud_vpc_subnet" "subnet" {
  name       = "subnet-prod"
  cidr       = "172.18.0.0/23"
  gateway_ip = "172.18.0.1"

  //dns is required for cce node installing
  primary_dns   = "100.125.1.250"
  secondary_dns = "100.125.21.250"
  vpc_id        = huaweicloud_vpc.vpc.id
}
resource "huaweicloud_vpc_subnet" "eni_test_1" {
  name          = "subnet-prod-eni-1"
  cidr          = "172.18.2.0/24"
  gateway_ip    = "172.18.2.1"
  vpc_id        = huaweicloud_vpc.vpc.id
}
resource "huaweicloud_vpc_subnet" "eni_test_2" {
  name          = "subnet-prod-eni-2"
  cidr          = "172.18.3.0/24"
  gateway_ip    = "172.18.3.1"
  vpc_id        = huaweicloud_vpc.vpc.id
}