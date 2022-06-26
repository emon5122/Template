# Setup k8s cluster using ansible

* Execute this command to check if all hosts are up(optional)
````
ansible -i hosts all -m ping
````

* Below command will run against all nodes, and will install the containerd runtime (including some pre-requisite configuration, then go onto install Kubernetes, which includes kubelet, kubeadm and kubectl
```
ansible-playbook -i hosts install-k8s.yml
```
* This command will setup master and will save the join key in tmp folder
```
ansible-playbook -i hosts masters.yml
```
* Last command will join all worker nodes in the cluster.
```
 ansible-playbook -i hosts join-workers.yml
```