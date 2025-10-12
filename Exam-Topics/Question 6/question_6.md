# Question 6
![alt text](image.png)

Reconfigure the existing deployment front-end and add a port specification named http
exposing port 80/tcp of the existing container nginx.

Create a new service named front-end-svc exposing the container port http.

Configure the new service to also expose the individual Pods via a NodePort on the nodes on which they are scheduled.

Things to note
- Port need to have a name, http
- Better to use `kubectl expose deployment command`
- Avoid `kubectl create service nodeport` due to the wrong app labels that it will set
- when searching for `kubectl expose`, use the `Using a Service to Expose Your App | Kubernetes` URL