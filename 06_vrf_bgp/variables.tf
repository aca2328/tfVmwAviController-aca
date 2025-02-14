variable "avi_version" {
    default = "21.1.4"
}
variable "avi_controller_ips" {}
variable "avi_tenant" {
    default = "admin"
}
variable "avi_password" {}

variable "cloud_name" {
    default = "dc1_vcenter"
}

variable "avi_vrf" {
    default = "global"
}

variable "avi_vrf_system_default" {
    default = true
}

variable "bgp_profile" {
    default = {
        hold_time = 180
        keepalive_interval = 60
        ibgp = false
        local_as = 65011
        send_community = true
        shutdown = false
    }
}

variable "bgp_peers" {
    default = [
        {
            advertise_snat_ip = true
            advertise_vip = true
            advertisement_interval = 5
            bfd = false
            connect_timer = 10
            ebgp_multihop = 0
            network_ref = "/api/network/?name=vxw-dvs-34-virtualwire-118-sid-1080117-sof2-01-vc08-avi-dev114"
            peer_ip     = {
              addr = "100.64.131.50"
              type = "V4"
            }
            remote_as   = "65100"
            shutdown = false
            subnet      = {
              ip_addr = {
                  addr = "100.64.131.0"
                  type = "V4"
              }
              mask = "24"
            }
        },
        {
            advertise_snat_ip = true
            advertise_vip = true
            advertisement_interval = 5
            bfd = false
            connect_timer = 10
            ebgp_multihop = 0
            network_ref = "/api/network/?name=vxw-dvs-34-virtualwire-118-sid-1080117-sof2-01-vc08-avi-dev114"
            peer_ip     = {
                addr = "100.64.131.51"
                type = "V4"
            }
            remote_as   = "65100"
            shutdown = false
            subnet      = {
                ip_addr = {
                    addr = "100.64.131.0"
                    type = "V4"
                }
                mask = "24"
            }
        }
    ]
}