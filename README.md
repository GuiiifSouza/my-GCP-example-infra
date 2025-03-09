# GCP Example Infrastructure

This repository demonstrates my DevOps skills using Google Cloud Platform (GCP). It includes Terraform configurations for setting up a GKE cluster and Ansible playbooks for managing the infrastructure and Kubernetes deployments.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Setup](#setup)
- [Usage](#usage)
- [Destroying the Infrastructure](#destroying-the-infrastructure)
- [Project Structure](#project-structure)

## Prerequisites

Before you begin, ensure you have the following installed:

- [Terraform](https://www.terraform.io/downloads.html) (version 1.12.0 or later)
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
- [Google Cloud SDK](https://cloud.google.com/sdk/docs/install)

## Setup

1. Clone the repository:

    ```sh
    git clone https://github.com/yourusername/my-GCP-example-infra.git
    cd my-GCP-example-infra
    ```

2. Configure your GCP credentials:

    ```sh
    gcloud auth application-default login
    ```

## Usage

1. Apply the Terraform configuration to create the infrastructure:

    ```sh
    ansible-playbook ansible/apply.yml
    ```

2. This playbook will:
    - Initialize and apply the Terraform configuration.
    - Retrieve the Kubernetes credentials.
    - Apply the Kubernetes manifests.

## Destroying the Infrastructure

To destroy the infrastructure, run the following command:

    ```sh
    ansible-playbook ansible/destroy.yml
    ```
