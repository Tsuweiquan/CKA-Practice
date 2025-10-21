# Question 6: Priority Class

you are working in a kubernetes cluster iwth an existing deployment named busybox-logger running in a namespace called priority.

The cluster already has at least one user-defined Priority Class

Perform the following tasks:

1. Create a new priortiy class name high-priority for user workloads. The value of this Priority Class should be exactly one less than the highest existing user-defined Priority Class value.

2. Patch existing deployment busybox-logger in the priority namespace to use the newly created high-priority Priority Class.

kubectl get pc

  kubectl create priorityclass high-priority --value=999 --description="high priority"

apiVersion: scheduling.k8s.io/v1
kind: PriorityClass
metadata:
  name: high-priority
value: 999
globalDefault: false
description: "This priority class should be used for XYZ service pods only."



kubectl edit deployment busybox-logger -n priority

apiVersion: apps/v1
kind: Deployment
metadata:
  name: busybox-logger
  labels:
    app: nginx
spec:
  replicas: 1
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: nginx:1.14.2
        ports:
        - containerPort: 80
      priorityClassName: high-priority


or 

kubectl patch deployment busybox-logger -n priority -p '{"spec": {"template": {"spec": {"priorityClassName": "high-priority"}}}}'
