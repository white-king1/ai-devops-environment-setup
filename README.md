# AI DevOps Engineering Environment Setup

## 1. Project Description

This repository documents my practical environment setup and configuration as part of my six-month AI DevOps Engineering training programme.

The project focuses on preparing a Linux development environment and installing essential DevOps tools for version control, containerisation, Kubernetes orchestration, cloud management, infrastructure automation and AI-assisted development.

The environment is being built incrementally, with installation evidence, verification results, practical exercises and troubleshooting notes documented throughout the project.

## 2. Host Environment

### Windows Environment

- Host Operating System: Windows 11 Pro
- System Architecture: x86_64
- Installed Physical RAM: 8GB
- Processor: Intel Core i5-4210U
- Windows C: Drive Free Space: 33.17GB
- Windows Update Status: Up to date
- Linux Environment: Ubuntu running through WSL2

### Linux Environment

- Distribution: Ubuntu 26.04.1 LTS
- Linux Username: `devopsuser`
- Linux Home Directory: `/home/devopsuser`
- WSL Version: WSL2
- Linux Kernel: `6.18.58.1-microsoft-standard-WSL2`
- Package Manager: APT (Advanced Package Tool)

The WSL environment reported approximately 3.8 GiB of total memory during verification.

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
- Git Repository: [AI DevOps Environment Setup](https://github.com/white-king1/ai-devops-environment-setup)
- Default Branch: `main`
- Initial Commit: `9f90403`
- GitHub CLI Version: `2.103.3`

Git and GitHub CLI were installed and configured successfully inside Ubuntu WSL2. The local repository is connected to the remote GitHub repository.

Git global identity was configured successfully.

### Visual Studio Code

- Visual Studio Code Version: `1.146.0`
- Editor Platform: Windows
- Development Environment: Ubuntu WSL2
- WSL Integration: Verified

Visual Studio Code was successfully connected to the Ubuntu WSL environment. The project repository was opened from its WSL-accessible directory, and the integrated terminal was verified to use the Linux environment.

## 3. Project Objectives

The main objectives of this project are to:

- Prepare and configure a Linux development environment.
- Install and configure Git and GitHub integration.
- Configure Visual Studio Code for development.
- Explore optional AI-assisted DevOps tools.
- Install Docker Engine and Docker Compose.
- Build and run containerised applications.
- Set up Kubernetes locally using Minikube.
- Install kubectl and Helm.
- Install AWS CLI and Azure CLI.
- Install Node.js and jq.
- Install Terraform and Ansible.
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
│   ├── tool-versions.txt
│   └── final-verification.txt
│
├── screenshots/
│   ├── docker-compose-logs-and-ps.png
│   ├── flask-api-docker-compose-success.png
│   ├── flask-api-health-check-json.png
│   ├── helm-nginx-demo-port-forward.png
│   ├── helm-nginx-pod-running-status.png
│   ├── install-aws-cli-via-terminal.png
│   ├── install-azure-cli-apt-get.png
│   ├── install-kubectl-and-minikube-wsl.png
│   ├── kubernetes-nginx-deployment.png
│   └── minikube-cluster-nodes-status.png
│
├── scripts/
│   └── verify-tools.sh
│
├── README.md
└── .gitignore
```

### Directory Description

- `configuration/`: Environment configuration files, including the Bash configuration template and Dev Container configuration.
- `reports/`: Tool installation, version verification and final verification reports.
- `screenshots/`: Evidence of software installations, configurations and practical exercises.
- `scripts/`: Reusable scripts for checking the installed DevOps tools and local services.
- `README.md`: Main project documentation.
- `.gitignore`: Files and directories excluded from Git tracking.

The Dev Container configuration has been prepared and validated as JSON. It has not yet been used to build or launch a Dev Container.

## 5. Package Manager

APT (Advanced Package Tool) is the primary package manager used for installing and managing software packages within Ubuntu.

Example commands:

```bash
sudo apt update
sudo apt upgrade -y
sudo apt install git -y
sudo apt install jq -y
```

Official repositories were configured where required for tools such as Docker, Kubernetes, Helm, HashiCorp and Microsoft Azure CLI.

### Repository Connectivity Note

During installation, APT initially encountered IPv6 connectivity issues when accessing Ubuntu repositories.

The issue was temporarily addressed by forcing APT to use IPv4:

```bash
sudo apt-get -o Acquire::ForceIPv4=true update
```

This allowed APT to retrieve package indexes from repositories that were reachable through IPv4.

## 6. Installation Progress

### 6.1 Completed Tasks

#### Host Environment and Version Control

- Windows 11 Pro verified.
- Windows Update checked and confirmed up to date.
- Host physical RAM verified at 8GB.
- Windows C: drive free space verified at 33.17GB.
- Windows Subsystem for Linux installed.
- Ubuntu 26.04.1 LTS installed and configured.
- WSL2 successfully enabled and verified.
- Ubuntu package updates executed.
- Git installed and verified.
- Git global username and email configured.
- GitHub CLI installed and authenticated.
- GitHub repository created and connected to the local project.
- Initial repository pushed to GitHub.
- Subsequent documentation and screenshot updates pushed to GitHub.

#### Visual Studio Code

- Visual Studio Code installed on Windows.
- Visual Studio Code version `1.146.0` verified.
- WSL development integration confirmed.
- Ubuntu WSL integrated terminal verified.
- Project repository opened from the WSL-accessible project directory.

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
- Kubernetes deployment screenshot captured.

#### Cloud Command-Line Tools

- AWS CLI installed and verified.
- Azure CLI installed and verified.
- AWS and Azure account authentication not configured.

#### JavaScript and Data Processing Tools

- Node.js installed and verified.
- npm installed and verified.
- jq installed and verified.

#### Infrastructure as Code and Configuration Management

- Terraform installed and verified.
- Ansible installed and verified.
- Ansible Core version verified.
- Python, Jinja and PyYAML dependencies verified.

#### Final Tool Verification

- Reusable Bash verification script created.
- Script executable permissions configured.
- Installed tool availability checked.
- Tool versions displayed and verified.
- Docker daemon responsiveness checked.
- Minikube cluster status checked.
- Kubernetes node readiness verified.
- Final verification output saved to `reports/final-verification.txt`.
- Final verification result: `ALL CHECKS PASSED`.

### 6.2 Remaining Tasks

- Explore optional AI-assisted DevOps tools.
- Perform final repository and security review.
- Review the final documentation and screenshots.
- Perform the final Git commit and push to GitHub.
- Complete the training assignment submission review.

Optional AI-assisted tools have not been treated as installed because they have not yet been installed and verified.

### 6.3 Tool Installation Status

| Tool | Installed Version | Current Status |
|---|---|---|
| Git | 2.53.0 | Installed and verified |
| GitHub CLI | 2.103.3 | Installed and authenticated |
| Visual Studio Code | 1.146.0 | Installed; WSL integration verified |
| Docker Engine | 29.9.3 | Installed and verified |
| Docker Compose | 5.7.0 | Installed and verified |
| Docker Buildx | 0.38.1 | Installed and verified |
| kubectl | 1.37.2 | Installed and verified |
| Minikube | 1.39.0 | Installed and verified |
| Helm | 4.3.0 | Installed and verified |
| AWS CLI | 2.40.0 | Installed and verified |
| Azure CLI | 2.92.0 | Installed and verified |
| Node.js | 22.22.1 | Installed and verified |
| npm | 9.2.0 | Installed and verified |
| jq | 1.8.1 | Installed and verified |
| Terraform | 1.17.2 | Installed and verified |
| Ansible | 13.1.0 | Installed and verified |
| Ansible Core | 2.20.1 | Installed and verified |

All listed versions are based on terminal verification during environment setup. AWS and Azure CLI account authentication has not been configured.

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

### 8.3 Automated Environment Verification

A reusable Bash script was created at:

```text
scripts/verify-tools.sh
```

The script checks the availability and versions of the installed development and DevOps tools.

It also checks:

- Docker daemon responsiveness.
- Minikube cluster status.
- Kubernetes node readiness.

To run the verification script:

```bash
./scripts/verify-tools.sh
```

To save the verification output to a report:

```bash
./scripts/verify-tools.sh | tee reports/final-verification.txt
```

The final verification report is stored at:

```text
reports/final-verification.txt
```

The latest completed verification returned:

```text
PASS: Docker daemon is responding.
PASS: Minikube is running.

NAME       STATUS   ROLES           VERSION
minikube   Ready    control-plane   v1.37.2

RESULT: ALL CHECKS PASSED
```

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

The issue was addressed by running APT with:

```bash
sudo apt-get -o Acquire::ForceIPv4=true update
```

The Azure CLI package was then installed and verified successfully.

### Ansible Installation and WSL2 DNS Resolution

During Ansible installation, APT repeatedly failed to download packages from `archive.ubuntu.com`.

The error reported was:

```text
Something wicked happened resolving 'archive.ubuntu.com:http'
(-5 - No address associated with hostname)
```

Initial network checks confirmed that:

- Internet connectivity through IPv4 was available.
- Windows successfully resolved `archive.ubuntu.com`.
- Ubuntu's repository was reachable when DNS was bypassed.
- DNS resolution inside WSL2 was intermittently failing.

The WSL2 environment was restarted using:

```powershell
wsl.exe --shutdown
```

After reopening Ubuntu, DNS resolution and repository connectivity were restored.

Ansible was subsequently installed successfully using:

```bash
sudo apt-get -o Acquire::ForceIPv4=true -o Acquire::Retries=5 install ansible -y
```

The installation was verified using:

```bash
ansible --version
```

This troubleshooting exercise demonstrated the importance of distinguishing DNS resolution problems from general internet connectivity issues.

## 10. Security Considerations

- Avoid uploading passwords, access tokens and private keys to GitHub.
- Exclude sensitive environment files from Git tracking.
- Use appropriate permissions when managing configuration files.
- Do not commit AWS or Azure credentials.
- Verify software installations before recording them as completed.
- Protect GitHub authentication credentials.
- Remember that membership in the Docker group grants root-equivalent privileges.
- Use secure authentication and access controls when deploying infrastructure.
- Keep cloud credentials outside the project repository.
- Review files before staging and pushing changes to GitHub.

The project's `.gitignore` file includes rules for environment secrets, private keys, Kubernetes credentials, Terraform state files and temporary files.

## 11. Conclusion

This project establishes a practical foundation for learning AI DevOps Engineering through Linux environment configuration, version control, containerisation, Kubernetes orchestration, cloud command-line tooling and infrastructure automation.

The host environment, Git/GitHub, Visual Studio Code WSL integration, Docker, Docker Compose, Kubernetes, Helm, AWS CLI, Azure CLI, Node.js, npm, jq, Terraform and Ansible have been installed and verified.

Practical exercises involving Docker Compose, Flask, Nginx, Minikube and Helm have also been completed successfully.

A reusable verification script was created to check the installed tools, Docker service and Kubernetes cluster. The final verification report confirmed that all checks passed.

Installation evidence, configuration files, screenshots and verification reports are organised within the repository.

The remaining work focuses on the final repository review, optional AI-assisted tools and submission preparation.

This README will continue to be updated as the project progresses.
