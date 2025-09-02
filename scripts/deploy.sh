#!/bin/bash

set -e

echo "Deploying ArgoCD Project..."
kubectl apply -f projects/data-platform.yaml

echo "Deploying App of Apps..."
kubectl apply -f app-of-apps.yaml

echo "Deployment completed!"
echo "Check status: kubectl get applications -n argo-cd"
