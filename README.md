# AI DevOps Engineering Environment Setup

## 1. Project Description

This repository documents my practical environment setup and configuration as part of my six-month AI DevOps Engineering training programme.

The project focuses on preparing a Linux development environment and installing essential DevOps tools for version control, containerisation, Kubernetes orchestration, cloud management, infrastructure automation and AI-assisted development.

The environment is being built incrementally, with installation evidence, verification results and troubleshooting notes documented throughout the project.

## 2. Host Environment

### Windows Environment

- Host Operating System: Windows 11 Pro
- System Architecture: x86_64
- Installed Physical RAM: 8GB
- Processor: Intel Core i5-4210U
- Linux Environment: Ubuntu running through WSL2

### Linux Environment

- Distribution: Ubuntu 26.04.1 LTS
- Linux Username: `devopsuser`
- Linux Home Directory: `/home/devopsuser`
- WSL Version: WSL2
- Linux Kernel: `6.18.58.1-microsoft-standard-WSL2`
- Package Manager: APT (Advanced Package Tool)

The WSL environment reported approximately 3.8 GiB of available memory to Linux during verification.

### Package Manager

APT is the primary package manager used to install, update and manage software packages within Ubuntu.

Commands executed:

```bash
sudo apt update
sudo apt upgrade -y
```

APT was also used to configure and install several development and DevOps tools through their official package repositories.

### Version Control

- Version Control System: Git
- Git Version: `2.53.0`
- GitHub Account: `white-king1`
- Git Repository: `https://github.com/white-king1/ai-devops-environment-setup`
- Default Branch: `main`
- Initial Commit: `9f90403`
- GitHub CLI Version: `2.103.3`

Git and GitHub CLI were installed and configured successfully inside Ubuntu WSL2. The local repository is connected to the remote GitHub repository.

Git global identity was configured successfully.

## 3. Project Objectives

The main objectives of this project are to:

- Prepare and configure a Linux development environment.
- Install and configure Git and GitHub integration.
- Configure Visual Studio Code for development.
- Explore AI-assisted DevOps tools.
- Install Docker Engine and Docker Compose.
- Build and run containerised applications.
- Set up Kubernetes locally using Minikube.
- Install kubectl and Helm.
- Install AWS CLI and Azure CLI.
- Install Node.js and jq.
- Configure Terraform and Ansible.
- Perform tooling verification and security checks.
- Document installation procedures, troubleshooting steps and practical exercises.

## 4. Project Structure

The repository is organised as follows:

```text
ai-devops-environment-setup/
│
├── configuration/
│   ├── .bashrc
│   └── devcontainer.json
│
├── reports/
│   └── tool-versions.txt
│
├── screenshots/
│   ├── Installation and configuration screenshots
│   └── Kubernetes and Docker evidence
│
├── README.md
└── .gitignore
```

### Directory Description

- `configuration/`: Environment configuration files.
- `reports/`: Tool installation and version verification reports.
- `screenshots/`: Evidence of software installations, configurations and practical exercises.
- `README.md`: Main project documentation.
- `.gitignore`: Files and directories excluded from Git tracking.

## 5. Package Manager

APT (Advanced Package Tool) is the primary package manager used for installing and managing software packages within Ubuntu.

Example commands:

```bash
sudo apt update
sudo apt upgrade -y
sudo apt install git -y
sudo apt install jq -y
```

Official repositories were configured where required for tools such as Docker, Kubernetes, Helm and Microsoft Azure CLI.

### Repository Connectivity Note

During Azure CLI installation, APT initially encountered an IPv6 connectivity issue when accessing the Ubuntu security repository.

The issue was resolved by forcing APT to use IPv4:

```bash
sudo apt-get -o Acquire::ForceIPv4=true update
```

The update subsequently completed successfully, including access to the Ubuntu security and Microsoft Azure CLI repositories.

## 6. Installation Progress

### 6.1 Completed Tasks

#### Host Environment and Version Control

- Windows Subsystem for Linux installed.
- Ubuntu 26.04.1 LTS installed and configured.
- WSL2 successfully enabled and verified.
- Ubuntu package updates executed.
- Git installed and verified.
- Git global username and email configured.
- GitHub CLI installed and authenticated.
- GitHub repository created and connected to the local project.
- Initial repository pushed to GitHub.

#### Visual Studio Code

- Visual Studio Code installed on Windows.
- WSL development integration still requires final verification.

#### Containerisation

- Docker Engine installed and verified.
- Docker Compose installed and verified.
- Docker Buildx installed and verified.
- Docker service successfully started.
- Docker `hello-world` container executed successfully.
- Docker group access configured for the `devopsuser` account.
- Docker commands successfully executed without `sudo`.

#### Docker Compose Practical Exercise

A separate Docker Compose practice application was created and tested.

The exercise included:

- A Python Flask application.
- Flask REST endpoints.
- A Dockerfile for containerising the application.
- Docker Compose configuration.
- Nginx reverse proxy.
- Container networking.
- Application access through `http://localhost:8080`.
- Successful application and health endpoint responses.
- Container start, stop and cleanup operations.

#### Kubernetes and Orchestration

- Minikube installed and verified.
- kubectl installed and verified.
- Helm installed and verified.
- Local Kubernetes cluster created using the Docker driver.
- Kubernetes node successfully reached `Ready` status.
- Kubernetes system pods verified.
- Helm chart created and linted successfully.
- Nginx application deployed using Helm.
- Kubernetes deployment and service verified.
- Nginx application accessed successfully through port forwarding at `http://localhost:8080`.

#### Cloud Command-Line Tools

- AWS CLI installed and verified.
- Azure CLI installed and verified.
- AWS and Azure account authentication not yet configured.

### 6.2 Pending Tasks

- Verify Visual Studio Code WSL integration.
- Explore AI-assisted DevOps tools.
- Install Node.js.
- Install jq.
- Install Terraform.
- Install Ansible.
- Complete final tooling verification.
- Complete security checks.
- Update the final tool verification report.
- Capture any remaining required screenshots.
- Finalise project documentation and submission evidence.

### 6.3 Tool Installation Status

| Tool               | Installed Version | Current Status                                |
| ------------------ | ----------------- | --------------------------------------------- |
| Git                | 2.53.0            | Installed and verified                        |
| GitHub CLI         | 2.103.3           | Installed and verified                        |
| Visual Studio Code | Not recorded      | Installed on Windows; WSL integration pending |
| Docker Engine      | 29.9.3            | Installed and verified                        |
| Docker Compose     | 5.7.0             | Installed and verified                        |
| Docker Buildx      | 0.38.1            | Installed and verified                        |
| kubectl            | 1.37.2            | Installed and verified                        |
| Minikube           | 1.39.0            | Installed and verified                        |
| Helm               | 4.3.0             | Installed and verified                        |
| AWS CLI            | 2.40.0            | Installed and verified                        |
| Azure CLI          | 2.92.0            | Installed and verified                        |
| Node.js            | Not installed     | Pending                                       |
| jq                 | Not installed     | Pending                                       |
| Terraform          | Not installed     | Pending                                       |
| Ansible            | Not installed     | Pending                                       |

**Note:** Tool versions are based on the outputs verified during installation. The Node.js version identified as available through Ubuntu APT is `22.22.1`, but it has not yet been installed.

## 7. Git Verification

Git version:

```bash
git --version
```

Verified output:

```text
git version 2.53.0
```

Git executable location:

```bash
which git
```

Verified output:

```text
/usr/bin/git
```

GitHub CLI verification:

```bash
gh --version
gh auth status
```

Remote repository verification:

```bash
git remote -v
```

The local repository is connected to:

```text
https://github.com/white-king1/ai-devops-environment-setup.git
```

The default branch is `main`.

## 8. Practical Exercises

### 8.1 Docker Compose Exercise

Project directory:

```text
~/docker-compose-practice
```

The exercise involved building and running a Flask application behind an Nginx reverse proxy using Docker Compose.

Application endpoints:

```text
http://localhost:8080/
http://localhost:8080/health
```

Both endpoints were tested successfully.

### 8.2 Kubernetes and Helm Exercise

Practice directory:

```text
~/kubernetes-helm-practice
```

A Helm chart was generated, validated and deployed to the local Minikube cluster.

Verification commands:

```bash
minikube status
kubectl get nodes -o wide
kubectl get pods -A
helm list -A
```

The Nginx application was exposed locally using:

```bash
kubectl port-forward -n nginx-demo service/nginx-demo 8080:80
```

The default Nginx welcome page was successfully accessed through the browser.

## 9. Troubleshooting and Installation Notes

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

Git configuration was subsequently verified.

### Docker Configuration

Docker Engine was installed directly inside Ubuntu WSL2 rather than using Docker Desktop.

This approach provided a working container environment while avoiding additional desktop resource overhead.

After adding `devopsuser` to the Docker group, WSL was restarted so that the new group membership could take effect.

### Kubernetes Startup

The Minikube node initially reported `NotReady` during startup.

After allowing the required Kubernetes services to initialise, the node transitioned to `Ready`.

### AWS CLI Download

The initial AWS CLI download attempt experienced a connection timeout.

Connectivity and DNS were checked, and the download was subsequently completed successfully. The downloaded ZIP archive passed its integrity test before installation.

### Azure CLI Repository Connectivity

APT initially experienced IPv6 connectivity problems when accessing the Ubuntu security repository.

The issue was resolved by running APT with:

```bash
sudo apt-get -o Acquire::ForceIPv4=true update
```

The Azure CLI package was then installed and verified successfully.

## 10. Security Considerations

- Avoid uploading passwords, access tokens and private keys to GitHub.
- Exclude sensitive environment files from Git tracking.
- Use appropriate permissions when managing configuration files.
- Do not commit AWS or Azure credentials.
- Verify software installations before recording them as completed.
- Protect GitHub authentication credentials.
- Remember that membership in the Docker group grants root-equivalent privileges.
- Use secure authentication and access controls when deploying infrastructure.

## 11. Conclusion

This project establishes a practical foundation for learning AI DevOps Engineering through Linux environment configuration, version control, containerisation, Kubernetes orchestration and cloud command-line tooling.

The host environment, Git/GitHub, Docker, Docker Compose, Kubernetes, Helm, AWS CLI and Azure CLI have been installed and verified.

The next stage focuses on Node.js, jq, Terraform and Ansible, followed by final verification, security checks and submission documentation.

This README will continue to be updated as additional tools are installed, tested and verified.
