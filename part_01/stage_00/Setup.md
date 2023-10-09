# Start

## Terraform documentation

https://developer.hashicorp.com/terraform/language

## AWSCLI installation

### Debian example
```bash
# System update and awscli installation.
sudo apt-get update && sudo apt-get install -y awscli

aws --version
```

## Setup AWS credentials

Docs: https://docs.aws.amazon.com/cli/latest/userguide/getting-started-quickstart.html

```bash
aws configure set role_arn arn:aws:iam::666666666666:user/marekjestmistrzem
aws configure set source_profile default
aws configure set role_session_name marekaws
aws configure set region eu-central-1
aws configure set output json
```

## Terraform installation
Documentation: https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

### Debian example
```bash
# System update and installation of necessary packages.
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common

# Install the HashiCorp GPG key.
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo tee /etc/apt/trusted.gpg.d/hashicorp.asc

# Add the official HashiCorp repository to your system. 
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

# Install
sudo apt update
sudo apt-get install terraform

terraform --version
```
