output "infrastructure.bootstrap.os_user" {
  description = "Bootstrap instance OS default user"
  value       = "${module.dcos-infrastructure.bootstrap.os_user}"
}

output "infrastructure.masters.os_user" {
  description = "Master instances private OS default user"
  value       = "${module.dcos-infrastructure.masters.os_user}"
}

output "infrastructure.private_agents.os_user" {
  description = "Private Agent instances private OS default user"
  value       = "${module.dcos-infrastructure.private_agents.os_user}"
}

output "infrastructure.public_agents.os_user" {
  description = "Private Agent instances private OS default user"
  value       = "${module.dcos-infrastructure.public_agents.os_user}"
}

output "infrastructure.bootstrap.private_ip" {
  description = "Private IP of the bootstrap instance"
  value       = "${module.dcos-infrastructure.bootstrap.private_ip}"
}

output "infrastructure.bootstrap.public_ip" {
  description = "Public IP of the bootstrap instance"
  value       = "${module.dcos-infrastructure.bootstrap.public_ip}"
}

output "infrastructure.masters.public_ips" {
  description = "Master instances public IPs"
  value       = "${module.dcos-infrastructure.masters.public_ips}"
}

output "infrastructure.masters.private_ips" {
  description = "Master instances private IPs"
  value       = "${module.dcos-infrastructure.masters.private_ips}"
}

output "infrastructure.private_agents.public_ips" {
  description = "Private Agent public IPs"
  value       = "${module.dcos-infrastructure.private_agents.public_ips}"
}

output "infrastructure.private_agents.private_ips" {
  description = "Private Agent instances private IPs"
  value       = "${module.dcos-infrastructure.private_agents.private_ips}"
}

output "infrastructure.public_agents.public_ips" {
  description = "Public Agent public IPs"
  value       = "${module.dcos-infrastructure.public_agents.public_ips}"
}

output "infrastructure.public_agents.private_ips" {
  description = "Public Agent instances private IPs"
  value       = "${module.dcos-infrastructure.public_agents.private_ips}"
}

output "infrastructure.vnet_id" {
  description = "ID of the VNET"
  value       = "${module.dcos-infrastructure.vnet_id}"
}

output "infrastructure.vnet_name" {
  description = "Name of the VNET"
  value       = "${module.dcos-infrastructure.vnet_id}"
}

output "infrastructure.resource_group_name" {
  description = "Name of the resource group"
  value       = "${module.dcos-infrastructure.resource_group_name}"
}
