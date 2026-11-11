# AI DevOps Engineering Environment Setup

## 1. Project Description

This repository documents my practical environment setup and configuration as part of my six-month AI DevOps Engineering training programme.

The project focuses on preparing a development environment, installing essential DevOps tools, configuring containerisation, Kubernetes orchestration, infrastructure automation and AI-assisted development tools.


## 2. Host Environment

### Windows Environment
- Host Operating System: Windows 11 Pro
- System Architecture: x86_64
- Installed RAM: 8GB
- Processor: Intel Core i5-4210U
- Linux Environment: Ubuntu running through WSL2

### Linux Environment
- Distribution: Ubuntu 26.04.1 LTS
- Linux Username: devopsuser
- Linux Home Directory: /home/devopsuser
- WSL Version: WSL2
- Linux Kernel: 6.18.58.1-microsoft-standard-WSL2

### Package Manager
- Package Manager: APT (Advanced Package Tool)

APT was used to update the Ubuntu package lists and upgrade installed packages.

Commands executed:

```bash
sudo apt update
sudo apt upgrade -y
```

### Version Control
- Version Control System: Git
- Git Version: 2.53.0
- Git Username: white-king1
- Git Repository: Initialised locally
- Default Branch: main
- Initial Commit: 9f90403

Git was installed and configured successfully inside Ubuntu WSL2.


## 3. Project Objectives

- Prepare and configure a Linux development environment.
- Install and configure Git and GitHub integration.
- Install Visual Studio Code.
- Explore AI-assisted DevOps tools.
- Configure Docker and Docker Compose.
- Set up Kubernetes using Minikube.
- Install kubectl and Helm.
- Configure AWS and Azure CLI tools.
- Install Node.js and jq.
- Configure Terraform and Ansible.
- Perform tooling verification and security checks.

## 4. Project Structure

- configuration/: Environment configuration files.
- reports/: Tool installation and verification reports.
- screenshots/: Evidence of installations and Kubernetes cluster execution.
- README.md: Project documentation.
- .gitignore: Files and folders excluded from Git tracking.

## 5. Package Manager

APT (Advanced Package Tool) is the primary package manager used for installing and managing software packages within Ubuntu.

Example commands:

```bash
sudo apt update
sudo apt upgrade -y
sudo apt install git -y
```

## 6. Installation Progress

### Completed

- Windows Subsystem for Linux installed.
- Ubuntu installed and configured.
- WSL2 successfully enabled.
- Ubuntu package updates completed.
- Git installed and verified.
- Git global username configured.
- Git global email configured.
- Visual Studio Code installed on Windows.
- Docker Engine installed and verified.
- Docker Compose installed and verified.
- Docker Buildx installed and verified.
- Docker hello-world container executed successfully with sudo.
- Docker group access configured for the `devopsuser` account.
- Docker commands successfully executed without sudo.
- Docker hello-world container executed successfully without sudo.

### Pending

- GitHub repository integration and initial push.
- Docker installation.
- Docker Compose installation.
- Minikube installation.
- kubectl installation.
- Helm installation.
- AWS CLI installation.
- Azure CLI installation.
- Node.js installation.
- jq installation.
- Terraform installation.
- Ansible installation.
- AI-assisted DevOps tools exploration.
- Final tooling verification and security checks.


### Tool Installation Status

| Tool           | Current Status         |
|----------------|------------------------|
| Git            | Installed and verified |
| VS Code        | Available              |
| Docker         | Installed and verified |
| Docker Compose | Installed and verified |
| Docker Buildx  | Installed and verified |
| kubectl        | Installed and verified |
| Minikube       | Installed and verified |
| Helm           | Installed and verified |
| Terraform      | Pending                |
| Ansible        | Pending                |
| AWS CLI        | Pending                |
| Azure CLI      | Pending                |
| Node.js        | Pending                |
| jq             | Pending                |


## 7. Git Verification

Git version:

```bash
git --version
```

Verified Git version: 2.53.0

Git executable location:

```bash
which git
```

Output:

```text
/usr/bin/git
```

Git identity has been configured successfully.

## 8. Troubleshooting and Installation Notes

### WSL2 Installation

Initial Ubuntu installation remained at 0.0% during the first installation attempt.

The issue was resolved by opening Ubuntu through Microsoft Store and completing the initial Linux user account provisioning.

### Git Configuration

Initial Git configuration commands were entered incorrectly.

This was resolved using:

```bash
git config --global user.name "white-king1"
git config --global user.email "kelechivctorn@gmail.com"
```

Git configuration was subsequently verified successfully.

## 9. Security Considerations

- Avoid uploading passwords, access tokens and private keys.
- Exclude sensitive environment files from Git tracking.
- Use appropriate permissions when managing configuration files.
- Verify software installations before recording them as completed.

## 10. Conclusion

This project provides a practical foundation for learning AI DevOps Engineering through Linux environment configuration, version control, containerisation, Kubernetes, cloud tooling and infrastructure automation.

Further installation evidence, verification reports and troubleshooting documentation will be added as the training environment progresses.
