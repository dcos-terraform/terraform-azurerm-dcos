# Install DC/OS on Azure

## Prerequisites
- [Terraform 0.11.x](https://www.terraform.io/downloads.html)
- SSH Private Key
- SSH Public Key
- Azure Cloud Credentials

## Getting Started

1. [Create installer directory](#create-installer-directory)
2. [Initialize Terraform](#initialize-terraform)
3. [Configure Azure keys](#configure-azurerm-ssh-keys)
4. [Configure and deploy DC/OS](#configure-and-deploy-dcos)


## Create Installer Directory

Make your directory where Terraform will download and place your Terraform infrastructure files.

```bash
mkdir dcos-installer
cd dcos-installer
```

## Initialize Terraform

Run this command below to have Terraform initialized from this repository. There is **no git clone of this repo required** as Terraform performs this for you.

```
curl -O https://raw.githubusercontent.com/dcos-terraform/terraform-azurerm-dcos/master/docs/published/main.tf
terraform init
```

## Modify main.tf variables

```bash
# edit the main.tf file
vi main.tf # change "ssh_public_key_file" to your local file ssh path and other variables you desire
```

### Configure Azure-cli or Azure Service Principal credentials

#### Azure-Cli Credentials

Install [Azure Cli](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest) and perform `az login`. If you have service account credentials, follow the instructions below instead.

#### Azure Service Principal Credentials

Follow the Terraform instructions [here](https://www.terraform.io/docs/providers/azurerm/#creating-credentials) to setup your Azure credentials to provide to terraform.

When you've successfully retrieved your output of `az account list`, create a source file to easily run your credentials in the future.

```bash
$ cat ~/.azure/credentials
export ARM_TENANT_ID=45ef06c1-a57b-40d5-967f-88cf8example
export ARM_CLIENT_SECRET=Lqw0kyzWXyEjfha9hfhs8dhasjpJUIGQhNFExAmPLE
export ARM_CLIENT_ID=80f99c3a-cd7d-4931-9405-8b614example
export ARM_SUBSCRIPTION_ID=846d9e22-a320-488c-92d5-41112example
$ source ~/.azure/credentials
```

## Configure And Deploy DC/OS

### Deploying with Custom Configuration

The default variables inputs are tracked in the [terraform-azurerm-dcos](https://registry.terraform.io/modules/dcos-terraform/dcos/azurerm) terraform registry.

#### Supported Operating Systems

Here is the [list of operating systems supported](https://github.com/dcos-terraform/terraform-azurerm-tested-oses/tree/master/platform/cloud/azure).

#### Supported DC/OS Versions

Here is the list of DC/OS versions supported on dcos-terraform natively:

- [OSS Versions](https://github.com/dcos-terraform/terraform-template-dcos-core/tree/master/open/dcos-versions)
- [Enterprise Versions](https://github.com/dcos-terraform/terraform-template-dcos-core/tree/master/ee/dcos-versions)

**NOTE:** Master DC/OS version is not meant for production use. It is only for CI/CD testing.

Use the following command to apply the configuration file and to accept all the default variables; otherwise following the instructions in this guide.

```bash
terraform apply
```

## Advanced YAML Configuration

The configuration templates using Terraform are designed to be flexible. Here is an example of working variables that allows deep customization by using a single main.tf file.

For advanced users with stringent requirements, paste the DC/OS flag examples in `main.tf` file.

The default variables inputs are tracked in the [terraform-azurerm-dcos](https://registry.terraform.io/modules/dcos-terraform/dcos/azurerm) terraform registry.


```bash
$ cat main.tf
...
module "dcos" {
  source  = "dcos-terraform/dcos/azurerm"
  version = "~> 0.1.0"

  # additional example variables in the module
  dcos_version = "1.11.5"
  dcos_instance_os = "centos_7.3"
  num_masters = "3"
  num_private_agents = "2"
  num_public_agents = "1"
  dcos_cluster_name = "DC/OS Cluster"
  dcos_cluster_docker_credentials_enabled =  "true"
  dcos_cluster_docker_credentials_write_to_etc = "true"
  dcos_cluster_docker_credentials_dcos_owned = "false"
  dcos_cluster_docker_registry_url = "https://index.docker.io"
  dcos_use_proxy = "yes"
  dcos_http_proxy = "example.com"
  dcos_https_proxy = "example.com"
  dcos_no_proxy = <<EOF
  # YAML
   - "internal.net"
   - "169.254.169.254"
  EOF
  dcos_overlay_network = <<EOF
  # YAML
      vtep_subnet: 44.128.0.0/20
      vtep_mac_oui: 70:B3:D5:00:00:00
      overlays:
        - name: dcos
          subnet: 12.0.0.0/8
          prefix: 26
  EOF
  dcos_rexray_config = <<EOF
  # YAML
    rexray:
      loglevel: warn
      modules:
        default-admin:
          host: tcp://127.0.0.1:61003
      storageDrivers:
      - ec2
      volume:
        unmount:
          ignoreusedcount: true
  EOF
  dcos_cluster_docker_credentials = <<EOF
  # YAML
    auths:
      'https://index.docker.io/v1/':
        auth: Ze9ja2VyY3licmljSmVFOEJrcTY2eTV1WHhnSkVuVndjVEE=
  EOF
```
**NOTE:** The YAML comment is required for the DC/OS specific YAML settings.

## Documentation

1. Deploying on Azure
2. [Upgrading DC/OS](./upgrade/README.md)
3. [Maintaining Nodes](./maintain/README.md)
4. [Destroy](./destroy/README.md)
