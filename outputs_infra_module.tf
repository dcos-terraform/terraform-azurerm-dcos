output "infrastructure.bootstrap.admin_username" {
  description = "Bootstrap instance OS default user"
  value       = "${module.dcos-infrastructure.bootstrap.admin_username}"
}

output "infrastructure.masters.admin_username" {
  description = "Master instances OS default user"
  value       = "${module.dcos-infrastructure.masters.admin_username}"
}

output "infrastructure.private_agents.admin_username" {
  description = "Private Agent instances OS default user"
  value       = "${module.dcos-infrastructure.private_agents.admin_username}"
}

output "infrastructure.public_agents.admin_username" {
  description = "Public Agent instances OS default user"
  value       = "${module.dcos-infrastructure.public_agents.admin_username}"
}

output "infrastructure.bootstrap.private_ip" {
  description = "Private IP of the bootstrap instance"
  value       = "${module.dcos-infrastructure.bootstrap.private_ip}"
}

output "infrastructure.bootstrap.public_ip" {
  description = "Public IP of the bootstrap instance"
  value       = "${module.dcos-infrastructure.bootstrap.public_ip}"
}

output "infrastructure.bootstrap.nsg_id" {
  description = "Network security group id of the bootstrap instance"
  value       = "${module.dcos-infrastructure.bootstrap.nsg_id}"
}

output "infrastructure.masters.public_ips" {
  description = "Master instances public IPs"
  value       = "${module.dcos-infrastructure.masters.public_ips}"
}

output "infrastructure.masters.private_ips" {
  description = "Master instances private IPs"
  value       = "${module.dcos-infrastructure.masters.private_ips}"
}

output "infrastructure.masters.nsg_id" {
  description = "Network security group id of the master instances"
  value       = "${module.dcos-infrastructure.masters.nsg_id}"
}

output "infrastructure.private_agents.public_ips" {
  description = "Private Agent public IPs"
  value       = "${module.dcos-infrastructure.private_agents.public_ips}"
}

output "infrastructure.private_agents.private_ips" {
  description = "Private Agent instances private IPs"
  value       = "${module.dcos-infrastructure.private_agents.private_ips}"
}

output "infrastructure.private_agents.nsg_id" {
  description = "Network security group id of the private agent instances"
  value       = "${module.dcos-infrastructure.private_agents.nsg_id}"
}

output "infrastructure.public_agents.public_ips" {
  description = "Public Agent public IPs"
  value       = "${module.dcos-infrastructure.public_agents.public_ips}"
}

output "infrastructure.public_agents.private_ips" {
  description = "Public Agent instances private IPs"
  value       = "${module.dcos-infrastructure.public_agents.private_ips}"
}

output "infrastructure.public_agents.nsg_id" {
  description = "Network security group id of the public agent instances"
  value       = "${module.dcos-infrastructure.public_agents.nsg_id}"
}

output "infrastructure.vnet_id" {
  description = "ID of the VNET"
  value       = "${module.dcos-infrastructure.vnet_id}"
}

output "infrastructure.vnet_name" {
  description = "Name of the VNET"
  value       = "${module.dcos-infrastructure.vnet_name}"
}

output "infrastructure.resource_group_name" {
  description = "Name of the resource group"
  value       = "${module.dcos-infrastructure.resource_group_name}"
}

output "infrastructure.subnet_id" {
  description = "Subnet ID of the infrastructure"
  value       = "${module.dcos-infrastructure.subnet_id}"
}
