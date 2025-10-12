Create an HPA (Horizontal Pod Autoscaler) for an existing deployment.

# How i will answer
kubectl autoscale deployment <deployment-name> --cpu=80% --min=1 --max=5
