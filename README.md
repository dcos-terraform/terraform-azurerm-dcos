# terraform gcp dcos

Convenience wrapper for GCP

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| billing_account | GCP Builing Account | string | `` | no |
| bootstrap_dcos_instance_os | Bootstrap node tested OSes image | string | `` | no |
| bootstrap_disk_size | Bootstrap node disk size (gb) | string | `` | no |
| bootstrap_disk_type | Bootstrap node disk type. Can be either "pd-ssd", "local-ssd", or "pd-standard". | string | `` | no |
| bootstrap_image | Bootstrap node OS image | string | `` | no |
| bootstrap_machine_type | Bootstrap node machine type | string | `` | no |
| bootstrap_public_ssh_key_path | Bootstrap Node Public SSH Key | string | `` | no |
| bootstrap_ssh_user | Bootstrap node SSH User | string | `` | no |
| credentials_path_json | GCP Credentials JSON | string | - | yes |
| custom_dcos_download_path | insert location of dcos installer script (optional) | string | `` | no |
| dcos_cluster_name | Name of the DC/OS cluster | string | `dcos-example` | no |
| dcos_license_key_contents | [Enterprise DC/OS] used to privide the license key of DC/OS for Enterprise Edition. Optional if license.txt is present on bootstrap node. | string | `` | no |
| dcos_type | DCOS type: 'ee' or 'open' | string | `open` | no |
| dcos_version | DCOS Version | string | `1.11.4` | no |
| infra_dcos_instance_os | Global Infra Tested OSes Image | string | `` | no |
| infra_disk_size | Global Infra Disk Size | string | `` | no |
| infra_disk_type | Global Infra Disk Type | string | `` | no |
| infra_machine_type | Global Infra Machine Type | string | `` | no |
| infra_public_ssh_key_path | Global Infra Public SSH Key | string | `` | no |
| infra_ssh_user | Global Infra SSH User | string | `` | no |
| master_dcos_instance_os | Master node tested OSes image | string | `` | no |
| master_disk_size | Master node disk size (gb) | string | `` | no |
| master_disk_type | Master node disk type. Can be either "pd-ssd", "local-ssd", or "pd-standard". | string | `` | no |
| master_image | Master node OS image | string | `` | no |
| master_machine_type | Master node machine type | string | `` | no |
| master_public_ssh_key_path | Master node Public SSH Key | string | `` | no |
| master_ssh_user | Master node SSH User | string | `` | no |
| name_prefix |  | string | - | yes |
| num_masters | Number of Masters | string | `1` | no |
| num_private_agents | Number of Private Agents | string | `1` | no |
| num_public_agents | Number of Public Agents | string | `1` | no |
| org_id | GCP Org ID | string | `` | no |
| private_agent_dcos_instance_os | Private agent node tested OSes image | string | `` | no |
| private_agent_disk_size | Private agent node disk size (gb) | string | `` | no |
| private_agent_disk_type | Private agent node disk type. Can be either "pd-ssd", "local-ssd", or "pd-standard". | string | `` | no |
| private_agent_image | Private agent node OS image | string | `` | no |
| private_agent_machine_type | Private agent node machine type | string | `` | no |
| private_agent_public_ssh_key_path | Private Agent node Public SSH Key | string | `` | no |
| private_agent_ssh_user | Private Agent ndoe SSH User | string | `` | no |
| project_id | Existing Project ID | string | `` | no |
| public_agent_dcos_instance_os | Public Agent node tested OSes image | string | `` | no |
| public_agent_disk_size | Public agent disk size (gb) | string | `` | no |
| public_agent_disk_type | Public agent node disk type. Can be either "pd-ssd", "local-ssd", or "pd-standard". | string | `` | no |
| public_agent_image | Public agent node OS image | string | `` | no |
| public_agent_machine_type | Public agent machine type | string | `` | no |
| public_agent_public_ssh_key_path | Public Agent node Public SSH Key | string | `` | no |
| public_agent_ssh_user | Public Agent node SSH User | string | `` | no |
| region | GCP Region | string | `` | no |

