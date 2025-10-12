# Medium blog on CKA Exam

- https://medium.com/@dilancs/my-cka-story-with-new-cka-2025-february-changes-4de06a246e4f


# MediumBlog: The questions I Got
I got 16 questions, and all of these are based on some scenario which was already built in each question’s cluster.

Select one out of the three NetworkPolicy manifests which matches the scenario described in the question (e.g., backend pods should only have ingress traffic from the frontend namespace).

Install the cridocker .deb package using the dpkg -i command and perform some follow-up tasks.

List all CRDs matching a keyword (cert-manager) and write them into a file. Then, document a field from the spec of the CRD using the kubectl explain command.

Expose a deployment using a NodePort service.

Create an HPA (Horizontal Pod Autoscaler) for an existing deployment.

Create an Ingress resource matching the scenario described in the question.

Create a Gateway with TLS and an HTTPRoute, matching the existing Ingress resource in the environment. Delete the Ingress after creating the Gateway.
Generate a Helm template and save it to a file using the helm template command. Then install the Helm chart with some changes to the Helm values. 
Both tasks were in a specific namespace, and a specific chart version was mentioned.

Create a PriorityClass with a modification compared to an existing user-defined PriorityClass.

Create a StorageClass.

Create a PVC and attach it to a Pod. There was an existing PV in the environment, and we had to choose PVC properties to match the PV.
Add a sidecar log container to an existing deployment by mounting a shared volume.

Change the ConfigMap properties of an existing NGINX ConfigMap to enable both TLSv1.2 and TLSv1.3. Only TLSv1.3 was enabled initially.

A deployment with three replicas had some pods in a pending state because the resource requests of containers exceeded the resources available on the node. Check the node’s CPU and memory, then divide them equally among the containers — keeping some overhead for system components and buffer — so that the deployment schedules all three replicas without any being pending.

kube-apiserver and kube-scheduler in a cluster were not working, but etcd, kube-controller-manager, and kubelet were. Troubleshoot and fix the issue.

Choose a CNI between Flannel and Calico that has built-in support for Network Policies (Calico supports them). Install the CNI and configure it to work with the current node’s PodCIDR.