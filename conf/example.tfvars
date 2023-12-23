# Environment
########################################################################
env_name       = "example"
location       = null
cluster_number = "01"
cluster_domain = "local"
# If using this project version >= 4.0.0 with a previously provisioned cluster,
# check this setting: https://github.com/khanh-ph/proxmox-kubernetes/releases/tag/4.0.0
use_legacy_naming_convention = false

# Proxmox VE
########################################################################
# Proxmox VE API details and VM hosting configuration
# API token guide: https://registry.terraform.io/providers/Telmate/proxmox/2.9.14/docs
pm_api_url          = ""
pm_user             = ""
pm_pass             = ""
pm_tls_insecure     = true
pm_host             = "pve"
pm_parallel         = 2
pm_timeout          = 600


# Common infrastructure configurations
########################################################################
# Kubernetes internal network
internal_net_name = "vmbr1"
# Internal network CIDR
internal_net_subnet_cidr = ""
# Base64 encoded keys for Kubernetes admin authentication
ssh_public_keys = ""
# Caution: In production, follow https://developer.hashicorp.com/terraform/tutorials/configuration-language/sensitive-variables
# to protect the sensitive variable `ssh_private_key` 
ssh_private_key = ""
# Default disk storage for the VMs. Uncomment the following line if needed
vm_os_disk_storage = "local-lvm"

# Bastion host details. This is required for the Terraform client to 
# connect to the Kubespray VM that will be placed into the internet network
bastion_ssh_ip   = "10.0.1.2"
bastion_ssh_user = "debian"
bastion_ssh_port = 22

# VM specifications
########################################################################
# Maximum cores that your Proxmox VE server can give to a VM
vm_max_vcpus = 2
# Control plane VM specifications
vm_k8s_control_plane = {
  node_count = 1
  vcpus      = 2
  memory     = 3072
  disk_size  = 20
}
# Worker nodes VM specifications
vm_k8s_worker = {
  node_count = 3
  vcpus      = 2
  memory     = 4096
  disk_size  = 20
}

# Kubernetes settings
########################################################################
kube_version               = "v1.24.6"
kube_network_plugin        = "calico"
enable_nodelocaldns        = false
podsecuritypolicy_enabled  = false
persistent_volumes_enabled = false
helm_enabled               = false
ingress_nginx_enabled      = false
argocd_enabled             = false
argocd_version             = "v2.4.12"

