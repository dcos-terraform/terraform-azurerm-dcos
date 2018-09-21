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
terraform init -from-module github.com/dcos-terraform/terraform-dcos-azurerm
```

## `cluster_profile.tfvars`

```bash
# or similar depending on your environment
echo "public_ssh_key_path=\"~/.ssh/id_rsa.pub\"" >> cluster_profile.tfvars
# lets set the clustername
echo "name_prefix=\"my-ee-cluster\"" >> cluster_profile.tfvars
# we at mesosphere have to tag our instances with an owner and an expire date.
echo "tags={owner = \"$(whoami)\", expiration = \"2h\"}" >> cluster_profile.tfvars
# we have to explicitly set the version.
echo "dcos_version=\"1.10.8\"" >> cluster_profile.tfvars
# we can set the azure location
echo "location=\"West US\"" >> cluster_profile.tfvars
```

### Configure either azure-cli or Azure Service Principal credentials

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

The default variables are tracked in the [variables.tf](../variables.tf) file. Since this file can be overwritten during updates when you may run `terraform get --update` when you fetch new releases of DC/OS to upgrade to, it's best to use the cluster_profile.tfvars and set your custom Terraform and DC/OS flags there. This way you can keep track of a single file that you can use manage the lifecycle of your cluster.

#### Supported Operating Systems

Here is the [list of operating systems supported](https://github.com/dcos-terraform/terraform-azurerm-tested-oses/tree/master/platform/cloud/azure).

#### Supported DC/OS Versions

Here is the list of DC/OS versions supported on dcos-terraform natively:

- [OSS Versions](https://github.com/dcos-terraform/terraform-template-dcos-core/tree/master/open/dcos-versions)
- [Enterprise Versions](https://github.com/dcos-terraform/terraform-template-dcos-core/tree/master/ee/dcos-versions)

**Note**: Master DC/OS version is not meant for production use. It is only for CI/CD testing.

To apply the configuration file, you can use this command below.

```bash
terraform apply -var-file cluster_profile.tfvars
```

## Advanced YAML Configuration

We have designed this project to be flexible. Here are the example working variables that allows very deep customization by using a single `tfvars` file.

For advanced users with stringent requirements, here are DC/OS flag examples you can simply paste in `cluster_profile.tfvars`.

```bash
$ cat cluster_profile.tfvars
dcos_version = "1.11.1"
os = "centos_7.3"
num_masters = "3"
num_private_agents = "2"
num_public_agents = "1"
ssh_key_name = "default" 
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
**Note**: The YAML comment is required for the DC/OS specific YAML settings.

## Documentation

1. Deploying on Azure
2. [Upgrading DC/OS](./UPGRADE.md)
3. [Maintaining Nodes](./MAINTAIN.md)
4. [Destroy](./DESTROY.md)
