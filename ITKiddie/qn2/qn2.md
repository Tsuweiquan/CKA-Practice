![alt text](image.png)

QUESTION 02:
update the existing deployment wordpress, adding a sidecar container named sidecar using the busybox:stable image to the existing
The new sidecar container has to run the following command: "/bin/sh -C "tail -f /var/log/wordpress.log" use a volume mounted at
/var/log to make the log file wordpress. log available to the co-located container


### Answer
kubectl get deploy
kubectl edit deployment wordpress

```
apiVersion: apps/v1
kind: Deployment
metadata:
  name: wordpress
  labels:
    app: wordpress
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
      - name: monitor
        image: nginx:1.14.2
        ports:               
        - containerPort: 80
        volumeMounts:                       # TO ADD
          - name: log                       # TO ADD
            mountPath: /var/log             # TO ADD    
      - name: sidecar                       # TO ADD
        image: busybox:stable               # TO ADD
        command: ['/bin/sh', '-c', 'tail -f /var/log/wordpress.log'] # TO ADD
        volumeMounts:                       # TO ADD
          - name: log                       # TO ADD
            mountPath: /var/log             # TO ADD
      volumes:                              # TO ADD
        - name: log                         # TO ADD
          emptyDir: {}                      # TO ADD
        
```