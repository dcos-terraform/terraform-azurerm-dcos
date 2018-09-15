##########################
# Infrastructure Variables
#########################

#
variable "name_prefix" {}

# Master CIDR Range
variable "public_cidr" {
  default = "10.32.0.0/22"
}

# Agent CIDR Range
variable "private_cidr" {
  default = "10.32.4.0/22"
}

# Bootstrap node disk size (gb)
variable "bootstrap_disk_size" {
  default = ""
}

# Bootstrap node disk type. 
variable "bootstrap_disk_type" {
  default = ""
}

# Bootstrap node machine type
variable "bootstrap_instance_type" {
  default = ""
}

# Bootstrap node OS image
variable "bootstrap_image" {
  default = ""
}

# Master node disk size (gb)
variable "master_disk_size" {
  default = ""
}

# Master node disk type. 
variable "master_disk_type" {
  default = ""
}

# Master node machine type
variable "master_instance_type" {
  default = ""
}

# Master node OS image
variable "master_image" {
  default = ""
}

# Private agent node disk size (gb)
variable "private_agent_disk_size" {
  default = ""
}

# Private agent node disk type. 
variable "private_agent_disk_type" {
  default = ""
}

# Private agent node machine type
variable "private_agent_instance_type" {
  default = ""
}

# Private agent node OS image
variable "private_agent_image" {
  default = ""
}

# Public agent disk size (gb)
variable "public_agent_disk_size" {
  default = ""
}

# Public agent node disk type. 
variable "public_agent_disk_type" {
  default = ""
}

# Public agent machine type
variable "public_agent_instance_type" {
  default = ""
}

# Public agent node OS image
variable "public_agent_image" {
  default = ""
}

# Master node Public SSH Key
variable "master_public_ssh_key_path" {
  default = ""
}

# Private Agent node Public SSH Key 
variable "private_agent_public_ssh_key_path" {
  default = ""
}

# Public Agent node Public SSH Key
variable "public_agent_public_ssh_key_path" {
  default = ""
}

# Bootstrap Node Public SSH Key
variable "bootstrap_public_ssh_key_path" {
  default = ""
}

# Azure Region
variable "location" {
  default = "West US"
}

# Master node SSH User
variable "master_admin_username" {
  default = ""
}

# Bootstrap node SSH User
variable "bootstrap_admin_username" {
  default = ""
}

# Public Agent node SSH User
variable "public_agent_admin_username" {
  default = ""
}

# Private Agent ndoe SSH User
variable "private_agent_admin_username" {
  default = ""
}

# Global Infra SSH User
variable "infra_admin_username" {
  default = ""
}

# Global Infra Public SSH Key
variable "infra_public_ssh_key_path" {
  default = ""
}

# Global Infra Disk Type
variable "infra_disk_type" {
  default = "Standard_LRS"
}

# Global Infra Disk Size
variable "infra_disk_size" {
  default = "128"
}

# Global Infra Machine Type
variable "infra_instance_type" {
  default = "Standard_DS11_v2"
}

# Global Infra Tested OSes Image
variable "infra_dcos_instance_os" {
  default = "coreos_1235.9.0"
}

# Master node tested OSes image
variable "master_dcos_instance_os" {
  default = ""
}

# Public Agent node tested OSes image
variable "public_agent_dcos_instance_os" {
  default = ""
}

# Private agent node tested OSes image
variable "private_agent_dcos_instance_os" {
  default = ""
}

# Bootstrap node tested OSes image
variable "bootstrap_dcos_instance_os" {
  default = ""
}

##############################
#                            #
#  Terraform DCOS Variables  #
##############################

# Number of Masters
variable "num_masters" {
  default = "3"
}

# Number of Private Agents
variable "num_private_agents" {
  default = "1"
}

# Number of Public Agents
variable "num_public_agents" {
  default = "1"
}

# DCOS Version
variable "dcos_version" {
  default = "1.11.4"
}

#####################
# dcos_core variables
#####################

# DCOS License Key Contents (enterprise)
variable "dcos_license_key_contents" {
  default     = ""
  description = "[Enterprise DC/OS] used to privide the license key of DC/OS for Enterprise Edition. Optional if license.txt is present on bootstrap node."
}

# Custom DCOS download path
variable "custom_dcos_download_path" {
  default     = ""
  description = "insert location of dcos installer script (optional)"
}

# DCOS type: 'ee' or 'open'
variable "dcos_type" {
  default = "open"
}

# Add special tags to the resources created by this module
variable "tags" {
  type    = "map"
  default = {}
}

# DCOS install or upgrade mode
variable "dcos_install_mode" {
  default = "install"
}

# DCOS cluster name
variable "dcos_cluster_name" {
  description = "Name of the DC/OS cluster"
  default     = "dcos-example"
}
