variable "cluster_name" {
  description = "Name of the DC/OS cluster"
  default     = "dcos-example"
}

variable "ssh_public_key" {
  description = "SSH public key in authorized keys format (e.g. 'ssh-rsa ..') to be used with the instances. Make sure you added this key to your ssh-agent."

  default = ""
}

variable "ssh_public_key_file" {
  description = "Path to SSH public key. This is mandatory but can be set to an empty string if you want to use ssh_public_key with the key as string."
}

variable "location" {
  description = "Azure Region"
}

variable "num_masters" {
  description = "Specify the amount of masters. For redundancy you should have at least 3"
  default     = 3
}

variable "num_private_agents" {
  description = "Specify the amount of private agents. These agents will provide your main resources"
  default     = 2
}

variable "num_public_agents" {
  description = "Specify the amount of public agents. These agents will host marathon-lb and edgelb"
  default     = 1
}

variable "tags" {
  description = "Add custom tags to all resources"
  type        = "map"
  default     = {}
}

variable "admin_ips" {
  description = "List of CIDR admin IPs"
  type        = "list"
}

variable "cluster_name_random_string" {
  description = "Add a random string to the cluster name"
  default     = false
}

variable "dcos_instance_os" {
  description = "Operating system to use. Instead of using your own AMI you could use a provided OS."

  # default     = "centos_7.4"
  default = "centos_7.5"
}

variable "bootstrap_image" {
  description = "[BOOTSTRAP] Image to be used"
  type        = "map"
  default     = {}
}

variable "bootstrap_os" {
  description = "[BOOTSTRAP] Operating system to use. Instead of using your own AMI you could use a provided OS."
  default     = ""
}

variable "bootstrap_root_volume_size" {
  description = "[BOOTSTRAP] Root volume size in GB"
  default     = "80"
}

variable "bootstrap_root_volume_type" {
  description = "[BOOTSTRAP] Root volume type"
  default     = "Standard_LRS"
}

variable "bootstrap_vm_size" {
  description = "[BOOTSTRAP] Azure virtual machine size"
  default     = "Standard_B2s"
}

variable "masters_image" {
  description = "[MASTERS] Image to be used"
  type        = "map"
  default     = {}
}

variable "masters_os" {
  description = "[MASTERS] Operating system to use. Instead of using your own AMI you could use a provided OS."
  default     = ""
}

variable "masters_root_volume_size" {
  description = "[MASTERS] Root volume size in GB"
  default     = "120"
}

variable "masters_vm_size" {
  description = "[MASTERS] Azure virtual machine size"
  default     = "Standard_D4s_v3"
}

variable "private_agents_image" {
  description = "[PRIVATE AGENTS] Image to be used"
  type        = "map"
  default     = {}
}

variable "private_agents_os" {
  description = "[PRIVATE AGENTS] Operating system to use. Instead of using your own AMI you could use a provided OS."
  default     = ""
}

variable "private_agents_root_volume_size" {
  description = "[PRIVATE AGENTS] Root volume size in GB"
  default     = "120"
}

variable "private_agents_root_volume_type" {
  description = "[PRIVATE AGENTS] Root volume type"
  default     = "Standard_LRS"
}

variable "private_agents_vm_size" {
  description = "[PRIVATE AGENTS] Azure virtual machine size"
  default     = "Standard_D4s_v3"
}

variable "public_agents_image" {
  description = "[PUBLIC AGENTS] Image to be used"
  type        = "map"
  default     = {}
}

variable "public_agents_os" {
  description = "[PUBLIC AGENTS] Operating system to use. Instead of using your own AMI you could use a provided OS."
  default     = ""
}

variable "public_agents_root_volume_size" {
  description = "[PUBLIC AGENTS] Root volume size"
  default     = "120"
}

variable "public_agents_root_volume_type" {
  description = "[PUBLIC AGENTS] Specify the root volume type."
  default     = "Standard_LRS"
}

variable "public_agents_vm_size" {
  description = "[PUBLIC AGENTS] Azure virtual machine size"
  default     = "Standard_D4s_v3"
}

variable "public_agents_additional_ports" {
  description = "List of additional ports allowed for public access on public agents (80 and 443 open by default)"
  default     = []
}
