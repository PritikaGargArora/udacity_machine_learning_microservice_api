#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=pritikagargarora/project-ml-microservicesapi-udacity

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run project-ml-microservicesapi-udacity\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=ml-udacity

# Wait to pod status will be ready
kubectl wait pod/project-ml-microservicesapi-udacity --for=condition=Ready --timeout=-1s

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward project-ml-microservicesapi-udacity 8000:80

# Step 5:
# See the output of app running into pods
kubectl logs project-ml-microservicesapi-udacity  