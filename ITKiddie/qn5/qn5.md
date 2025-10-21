# Question 5

1. Create a new storage class name local-kiddie with the provisioner rancher.io/local-path

2. Set the volumeBindingMode to WaitForFirstConsumer

3. Configure the StorageClass as the default StorageClass

Do not modify any existing Deployments or PersistentVolumeClaims


Set the other storageClass to be not default


apiVersion: storage.k8s.io/v1
kind: StorageClass
metadata:
  name: local-kiddie
  annotations:
    storageclass.kubernetes.io/is-default-class: "false"
provisioner: rancher.io/local-path
volumeBindingMode: WaitForFirstConsumer

save as sc-yaml

kubectl apply -f sc.yaml

kubectl patch storageclass local-path -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"false"}}}'

kubectl patch storageclass local-kiddie -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"true"}}}'

kubectl get sc

