# /bin/bash

docker-compose up -d
kubectl apply -f nifi-deployment.yaml
kubectl get pods
