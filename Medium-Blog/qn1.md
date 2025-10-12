```
Select one out of the three NetworkPolicy manifests which matches the scenario described in the question (e.g., backend pods should only have ingress traffic from the frontend namespace).
```

Have an ingress to allow all Pods accessing from frontend namespace to backend namespace. 
Frontend namespace must be labelled with namespace=frontend
Only backend port 6379 is allowed
---
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: allow-frontend-to-backend
  namespace: backend
spec:
  podSelector: {}
  policyTypes:
  - Ingress
  ingress:
  - from:
    - namespaceSelector:
        matchLabels:
          namespace: frontend
    ports:
    - protocol: TCP
      port: 6379
---