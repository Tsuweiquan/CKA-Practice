# Question 13

Context
An existing Pod needs to be integrated into the Kubernetes built-in logging architecture (e.g.
kubectl logs). Adding a streaming sidecar container is a good and common way to accomplish this requirement.
Task
Add a sidecar container named sidecar, using the busybox image, to the existing Pod big-corp-app. The new sidecar container has to run the following command:

Use a Volume, mounted at /var/log, to make the log file big-corp-app.log available to the sidecar container.

# Readup on 
- https://kubernetes.io/docs/concepts/workloads/pods/sidecar-containers/
- we just need another pod to log down

in this case just update the deployment or pod manifest to have another container running, with the same mountPath to push logs