resource "huaweicloud_cce_cluster" "cluster" {
  name                   = "prod-cluster"
  flavor_id              = "cce.s1.small"
  vpc_id                 = huaweicloud_vpc.vpc.id
  subnet_id              = huaweicloud_vpc_subnet.subnet.id
  eip                    = huaweicloud_vpc_eip.eip.address
  container_network_type = "eni"
  eni_subnet_id          = join(",", [
      huaweicloud_vpc_subnet.eni_test_1.ipv4_subnet_id, 
      huaweicloud_vpc_subnet.eni_test_2.ipv4_subnet_id
    ])
}
resource "huaweicloud_vpc_eip" "eip" {
  publicip {
    type = "5_bgp"
  }
  bandwidth {
    name        = "sit-cce-bw"
    size        = 5
    share_type  = "PER"
    charge_mode = "traffic"
  }
}
resource "huaweicloud_cce_node_pool" "node_pool" {
  cluster_id               = huaweicloud_cce_cluster.cluster.id
  name                     = "node-pool"
  os                       = "CentOS 7.6"
  initial_node_count       = 2
  flavor_id                = "c7n.large.2"
  availability_zone        = "ap-southeast-3a"
  scall_enable             = true
  min_node_count           = 1
  max_node_count           = 10
  scale_down_cooldown_time = 100
  priority                 = 1
  type                     = "vm"
  password                 = "Huawei@123"

  root_volume {
    size       = 40
    volumetype = "SAS"
  }
  data_volumes {
    size       = 100
    volumetype = "SAS"
  }
}