##########################
# Infrastructure Variables
#########################

#
variable "name_prefix" {}

# GCP Builing Account
variable "billing_account" {
  default = ""
}

# GCP Org ID
variable "org_id" {
  default = ""
}

# Existing Project ID
variable "project_id" {
  default = ""
}

# Master CIDR Range
variable "master_cidr_range" {
  default = "10.64.0.0/16"
}

# Agent CIDR Range
variable "agent_cidr_range" {
  default = "10.65.0.0/16"
}

# GCP Credentials JSON
variable "credentials_path_json" {}

# Bootstrap node disk size (gb)
variable "bootstrap_disk_size" {
  default = ""
}

# Bootstrap node disk type. Can be either "pd-ssd", "local-ssd", or "pd-standard".
variable "bootstrap_disk_type" {
  default = ""
}

# Bootstrap node machine type
variable "bootstrap_machine_type" {
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

# Master node disk type. Can be either "pd-ssd", "local-ssd", or "pd-standard".
variable "master_disk_type" {
  default = ""
}

# Master node machine type
variable "master_machine_type" {
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

# Private agent node disk type. Can be either "pd-ssd", "local-ssd", or "pd-standard".
variable "private_agent_disk_type" {
  default = ""
}

# Private agent node machine type
variable "private_agent_machine_type" {
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

# Public agent node disk type. Can be either "pd-ssd", "local-ssd", or "pd-standard".
variable "public_agent_disk_type" {
  default = ""
}

# Public agent machine type
variable "public_agent_machine_type" {
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

# GCP Region
variable "region" {
  default = ""
}

# Master node SSH User
variable "master_ssh_user" {
  default = ""
}

# Bootstrap node SSH User
variable "bootstrap_ssh_user" {
  default = ""
}

# Public Agent node SSH User
variable "public_agent_ssh_user" {
  default = ""
}

# Private Agent ndoe SSH User
variable "private_agent_ssh_user" {
  default = ""
}

# Global Infra SSH User
variable "infra_ssh_user" {
  default = ""
}

# Global Infra Public SSH Key
variable "infra_public_ssh_key_path" {
  default = ""
}

# Global Infra Disk Type
variable "infra_disk_type" {
  default = ""
}

# Global Infra Disk Size
variable "infra_disk_size" {
  default = ""
}

# Global Infra Machine Type
variable "infra_machine_type" {
  default = ""
}

# Global Infra Tested OSes Image
variable "infra_dcos_instance_os" {
  default = ""
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
  default = "1"
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

# DCOS cluster name
variable "dcos_cluster_name" {
  description = "Name of the DC/OS cluster"
  default     = "dcos-example"
}
