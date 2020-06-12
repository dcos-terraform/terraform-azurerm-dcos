output "infrastructure_bootstrap_admin_username" {
  description = "Bootstrap instance OS default user"
  value       = module.dcos-infrastructure.bootstrap_admin_username
}

output "infrastructure_masters_admin_username" {
  description = "Master instances OS default user"
  value       = module.dcos-infrastructure.masters_admin_username
}

output "infrastructure_private_agents_admin_username" {
  description = "Private Agent instances OS default user"
  value       = module.dcos-infrastructure.private_agents_admin_username
}

output "infrastructure_public_agents_admin_username" {
  description = "Public Agent instances OS default user"
  value       = module.dcos-infrastructure.public_agents_admin_username
}

output "infrastructure_bootstrap_private_ip" {
  description = "Private IP of the bootstrap instance"
  value       = module.dcos-infrastructure.bootstrap_private_ip
}

output "infrastructure_bootstrap_public_ip" {
  description = "Public IP of the bootstrap instance"
  value       = module.dcos-infrastructure.bootstrap_public_ip
}

output "infrastructure_bootstrap_nsg_id" {
  description = "Network security group id of the bootstrap instance"
  value       = module.dcos-infrastructure.bootstrap_nsg_id
}

output "infrastructure_masters_public_ips" {
  description = "Master instances public IPs"
  value       = module.dcos-infrastructure.masters_public_ips
}

output "infrastructure_masters_private_ips" {
  description = "Master instances private IPs"
  value       = module.dcos-infrastructure.masters_private_ips
}

output "infrastructure_masters_nsg_id" {
  description = "Network security group id of the master instances"
  value       = module.dcos-infrastructure.masters_nsg_id
}

output "infrastructure_private_agents_public_ips" {
  description = "Private Agent public IPs"
  value       = module.dcos-infrastructure.private_agents_public_ips
}

output "infrastructure_private_agents_private_ips" {
  description = "Private Agent instances private IPs"
  value       = module.dcos-infrastructure.private_agents_private_ips
}

output "infrastructure_private_agents_nsg_id" {
  description = "Network security group id of the private agent instances"
  value       = module.dcos-infrastructure.private_agents_nsg_id
}

output "infrastructure_public_agents_public_ips" {
  description = "Public Agent public IPs"
  value       = module.dcos-infrastructure.public_agents_public_ips
}

output "infrastructure_public_agents_private_ips" {
  description = "Public Agent instances private IPs"
  value       = module.dcos-infrastructure.public_agents_private_ips
}

output "infrastructure_public_agents_nsg_id" {
  description = "Network security group id of the public agent instances"
  value       = module.dcos-infrastructure.public_agents_nsg_id
}

output "infrastructure_vnet_id" {
  description = "ID of the VNET"
  value       = module.dcos-infrastructure.vnet_id
}

output "infrastructure_vnet_name" {
  description = "Name of the VNET"
  value       = module.dcos-infrastructure.vnet_name
}

output "infrastructure_resource_group_name" {
  description = "Name of the resource group"
  value       = module.dcos-infrastructure.resource_group_name
}

output "infrastructure_subnet_id" {
  description = "Subnet ID of the infrastructure"
  value       = module.dcos-infrastructure.subnet_id
}
