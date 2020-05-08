#!/bin/bash
set -e

echo "Starting build process..."

echo "Adding env variables..."
export PATH=/root/bin:$PATH

#Path to k8s config file
KUBECONFIG=/Users/kevin_gwdong/blockchainproject/blockchain-automation-framework/build/kubeconfig.yaml


echo "Running the playbook..."
exec ansible-playbook -vv /Users/kevin_gwdong/blockchainproject/blockchain-automation-framework/platforms/shared/configuration/site.yaml --inventory-file=/Users/kevin_gwdong/blockchainproject/blockchain-automation-framework/platforms/shared/inventory/ -e "@build/network.yaml" -e 'ansible_python_interpreter=/usr/bin/python3'
