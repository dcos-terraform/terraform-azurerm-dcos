#output "dcos-infrastructure.masters-loadbalancer" {
#  description = "This is the load balancer address to access the DC/OS UI"
#  value       = "${module.dcos-infrastructure.dcos-infrastructure.elb.masters_dns_name}"
#}

# Deployed Name Prefix
output "dcos-infrastructure.name_prefix" {
  description = "dcos-infrastructure.name prefix"
  value = "${var.name_prefix}"
}

# Deployed Bootstrap disk size
output "dcos-infrastructure.bootstrap.disk_size" {
  description = "dcos-infrastructure.bootstrap.disk size"
  value = "${module.dcos-infrastructure.bootstrap.disk_size}"
}

# Deployed Bootstrap disk type
output "dcos-infrastructure.bootstrap.disk_type" {
  description = "dcos-infrastructure.bootstrap.disk type"
  value = "${module.dcos-infrastructure.bootstrap.disk_type}"
}

# Deployed bootstrap machine type
output "dcos-infrastructure.bootstrap.instance_type" {
  description = "dcos-infrastructure.bootstrap.instance type"
  value = "${module.dcos-infrastructure.bootstrap.instance_type}"
}

# Deployed bootstrap image
output "dcos-infrastructure.bootstrap.image" {
  description = "dcos-infrastructure.bootstrap.image"
  value = "${module.dcos-infrastructure.bootstrap.image}"
}

# Deployed bootstrap agent SSH user
output "dcos-infrastructure.bootstrap.admin_username" {
  description = "dcos-infrastructure.bootstrap.admin username"
  value = "${module.dcos-infrastructure.bootstrap.admin_username}"
}

# Number of Masters
output "dcos-infrastructure.num_masters" {
  description = "dcos-infrastructure.num masters"
  value = "${var.num_masters}"
}

# Deployed master disk size
output "dcos-infrastructure.masters.disk_size" {
  description = "dcos-infrastructure.masters.disk size"
  value = "${module.dcos-infrastructure.masters.disk_size}"
} # 

# Deployed master disk type
output "dcos-infrastructure.masters.disk_type" {
  description = "dcos-infrastructure.masters.disk type"
  value = "${module.dcos-infrastructure.masters.disk_type}"
}

# Deployed master machine type
output "dcos-infrastructure.masters.instance_type" {
  description = "dcos-infrastructure.masters.instance type"
  value = "${module.dcos-infrastructure.masters.instance_type}"
}

# Deployed master image
output "dcos-infrastructure.masters.image" {
  description = "dcos-infrastructure.masters.image"
  value = "${module.dcos-infrastructure.masters.image}"
}

# Deployed masters agent SSH user
output "dcos-infrastructure.masters.admin_username" {
  description = "dcos-infrastructure.masters.admin username"
  value = "${module.dcos-infrastructure.masters.admin_username}"
}

# Number of private agents
output "dcos-infrastructure.num_private_agents" {
  description = "dcos-infrastructure.num private agents"
  value = "${var.num_private_agents}"
}

# Deployed private agent disk size
output "dcos-infrastructure.private_agents.disk_size" {
  description = "dcos-infrastructure.private agents.disk size"
  value = "${module.dcos-infrastructure.private_agents.disk_size}"
}

# Deployed private agent disk type
output "dcos-infrastructure.private_agents.disk_type" {
  description = "dcos-infrastructure.private agents.disk type"
  value = "${module.dcos-infrastructure.private_agents.disk_type}"
}

# Deployed private agent machine type
output "dcos-infrastructure.private_agents.instance_type" {
  description = "dcos-infrastructure.private agents.instance type"
  value = "${module.dcos-infrastructure.private_agents.instance_type}"
}

# Deployed private agent image
output "dcos-infrastructure.private_agents.image" {
  description = "dcos-infrastructure.private agents.image"
  value = "${module.dcos-infrastructure.private_agents.image}"
}

# Deployed private agent SSH user
output "dcos-infrastructure.private_agents.admin_username" {
  description = "dcos-infrastructure.private agents.admin username"
  value = "${module.dcos-infrastructure.private_agents.admin_username}"
}

# Number of public agents
output "dcos-infrastructure.num_public_agents" {
  description = "dcos-infrastructure.num public agents"
  value = "${var.num_public_agents}"
}

# Deployed public agent disk size
output "dcos-infrastructure.public_agents.disk_size" {
  description = "dcos-infrastructure.public agents.disk size"
  value = "${module.dcos-infrastructure.public_agents.disk_size}"
}

# Deployed public agent disk type
output "dcos-infrastructure.public_agents.disk_type" {
  description = "dcos-infrastructure.public agents.disk type"
  value = "${module.dcos-infrastructure.public_agents.disk_type}"
}

# Deployed public agent machine type
output "dcos-infrastructure.public_agents.instance_type" {
  description = "dcos-infrastructure.public agents.instance type"
  value = "${module.dcos-infrastructure.public_agents.instance_type}"
}

# provided public agent OS image
output "dcos-infrastructure.public_agents.image" {
  description = "dcos-infrastructure.public agents.image"
  value = "${module.dcos-infrastructure.public_agents.image}"
}

# Deployed public agent SSH user
output "dcos-infrastructure.public_agents.admin_username" {
  description = "dcos-infrastructure.public agents.admin username"
  value = "${module.dcos-infrastructure.public_agents.admin_username}"
}

# Azure Region
output "dcos-infrastructure.location" {
  description = "dcos-infrastructure.location"
  value = "${var.location}"
}

# Bootstrap private ip
output "dcos-infrastructure.bootstrap.private_ip" {
  description = "dcos-infrastructure.bootstrap.private ip"
  value = "${module.dcos-infrastructure.bootstrap.private_ip}"
}

# Bootstrap public ip
output "dcos-infrastructure.bootstrap.public_ip" {
  description = "dcos-infrastructure.bootstrap.public ip"
  value = "${module.dcos-infrastructure.bootstrap.public_ip}"
}

# masters public ip
output "dcos-infrastructure.masters.public_ips" {
  description = "dcos-infrastructure.masters.public ips"
  value = "${module.dcos-infrastructure.masters.public_ips}"
}

# masters private ip
output "dcos-infrastructure.masters.private_ips" {
  description = "dcos-infrastructure.masters.private ips"
  value = "${module.dcos-infrastructure.masters.private_ips}"
}

# private_agent public ip
output "dcos-infrastructure.private_agents.public_ips" {
  description = "dcos-infrastructure.private agents.public ips"
  value = "${module.dcos-infrastructure.private_agents.public_ips}"
}

# private_agent private ip
output "dcos-infrastructure.private_agents.private_ips" {
  description = "dcos-infrastructure.private agents.private ips"
  value = "${module.dcos-infrastructure.private_agents.private_ips}"
}

# public_agent public ip
output "dcos-infrastructure.public_agents.public_ips" {
  description = "dcos-infrastructure.public agents.public ips"
  value = "${module.dcos-infrastructure.public_agents.public_ips}"
}

# public_agent private ip
output "dcos-infrastructure.public_agents.private_ips" {
  description = "dcos-infrastructure.public agents.private ips"
  value = "${module.dcos-infrastructure.public_agents.private_ips}"
}

# Master node tested OSes image
output "dcos-infrastructure.masters.dcos_instance_os" {
  description = "dcos-infrastructure.masters.dcos instance os"
  value = "${module.dcos-infrastructure.masters.dcos_instance_os}"
}

# Master Load Balancer Address
output "dcos-infrastructure.masters.lb.fqdn" {
  description = "dcos-infrastructure.masters.lb.fqdn"
  value = "${module.dcos-infrastructure.masters.lb.fqdn}"
}

# Public Agent node tested OSes image
output "dcos-infrastructure.public_agents.dcos_instance_os" {
  description = "dcos-infrastructure.public agents.dcos instance os"
  value = "${module.dcos-infrastructure.public_agents.dcos_instance_os}"
}

# Public Agent Load Balancer Address
output "dcos-infrastructure.public_agents.lb.fqdn" {
  description = "dcos-infrastructure.public agents.lb.fqdn"
  value = "${module.dcos-infrastructure.public_agents.lb.fqdn}"
}

# Private agent node tested OSes image
output "dcos-infrastructure.private_agents.dcos_instance_os" {
  description = "dcos-infrastructure.private agents.dcos instance os"
  value = "${module.dcos-infrastructure.private_agents.dcos_instance_os}"
}

# Bootstrap node tested OSes image
output "dcos-infrastructure.bootstrap.dcos_instance_os" {
  description = "dcos-infrastructure.bootstrap.dcos instance os"
  value = "${module.dcos-infrastructure.bootstrap.dcos_instance_os}"
}

# DCOS Version
output "dcos-infrastructure.dcos_version" {
  description = "dcos-infrastructure.dcos version"
  value = "${var.dcos_version}"
}
