# Ansible and Terraform Configuration for Deploying a WordPress Cluster

This project contains Ansible and Terraform configurations for deploying a redundant WordPress cluster with Nginx load balancing and SSL termination on the Hetzner Cloud platform.

## Prerequisites

Before using this project, ensure that you have the following:

- An account with Hetzner Cloud and a valid API token.
- Terraform installed on your local machine.
- Ansible installed on your local machine.

## Getting Started

1. Clone this repository to your local machine.
2. Set your Hetzner Cloud API token as an environment variable:

    ```
    export HCLOUD_TOKEN="your-hetzner-cloud-api-token"
    ```

3. Navigate to the `terraform` directory and initialize Terraform:

    ```
    cd terraform
    terraform init
    ```

4. Review and apply the Terraform configuration:

    ```
    terraform apply
    ```

5. Once the infrastructure is deployed, navigate to the `ansible` directory and run the Ansible playbook:

    ```
    cd ../ansible
    
## Role Variables

- `load_balancer_ip`: The IP address of the load balancer.

## Example Playbook

```yaml
- name: Deploy WordPress
  hosts: all
  roles:
    - ansible-role-wordpress

    ```

6. Access your WordPress cluster at https://wordpress-rna.senecops.com.


## Additional Information

- For troubleshooting tips and common issues, see the [Troubleshooting Guide](docs/troubleshooting.md).
- You can customize the configuration by modifying the variables in the `terraform/variables.tf` file and the Ansible playbook in the `ansible/deploy.yaml` file.
