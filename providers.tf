terraform {
  required_version = ">=1.3.3"

  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "2.9.14"
    }
  }
}

provider "proxmox" {
  pm_api_url          = var.pm_api_url
  pm_user             = var.pm_user
  pm_password         = var.pm_pass
  pm_tls_insecure     = var.pm_tls_insecure
  pm_parallel         = var.pm_parallel
  pm_timeout          = var.pm_timeout
  # pm_log_enable       = true
  # pm_log_file         = "terraform-plugin-proxmox.log"
  # pm_debug            = true
  # pm_log_levels       = {
  #   _default          = "debug"
  #   _capturelog       = ""
  # }
}
