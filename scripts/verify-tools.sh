#!/usr/bin/env bash

echo "=============================================="
echo " AI DEVOPS ENGINEERING - VERIFICATION REPORT"
echo "=============================================="
echo "Date: $(date -Is)"
echo

FAILED=0

check_tool() {
    local name="$1"
    local command="$2"

    echo "Checking: $name"

    if command -v "$command" >/dev/null 2>&1; then
        echo "  INSTALLED: $(command -v "$command")"
    else
        echo "  MISSING"
        FAILED=$((FAILED + 1))
    fi
    echo
}

check_tool "Git" git
check_tool "GitHub CLI" gh
check_tool "Docker" docker
check_tool "kubectl" kubectl
check_tool "Minikube" minikube
check_tool "Helm" helm
check_tool "AWS CLI" aws
check_tool "Azure CLI" az
check_tool "Node.js" node
check_tool "npm" npm
check_tool "jq" jq
check_tool "Terraform" terraform
check_tool "Ansible" ansible

echo "=============================================="
echo " TOOL VERSIONS"
echo "=============================================="

git --version
gh --version | head -n 1
docker --version
docker compose version
kubectl version --client
minikube version
helm version --short
aws --version
echo "Azure CLI: $(az version --output json | jq -r '."azure-cli"')"
node --version
npm --version
jq --version
terraform version | head -n 1
ansible --version | head -n 1

echo
echo "=============================================="
echo " DOCKER SERVICE CHECK"
echo "=============================================="

if docker info >/dev/null 2>&1; then
    echo "PASS: Docker daemon is responding."
else
    echo "FAIL: Docker daemon is not responding."
    FAILED=$((FAILED + 1))
fi

echo
echo "=============================================="
echo " KUBERNETES CLUSTER CHECK"
echo "=============================================="

if minikube status >/dev/null 2>&1; then
    echo "PASS: Minikube is running."
    kubectl get nodes
else
    echo "FAIL: Minikube is not running or is unreachable."
    FAILED=$((FAILED + 1))
fi

echo
echo "=============================================="

if [ "$FAILED" -eq 0 ]; then
    echo "RESULT: ALL CHECKS PASSED"
else
    echo "RESULT: $FAILED CHECK(S) NEED ATTENTION"
fi

echo "=============================================="

exit "$FAILED"
