# https-github.com-detachx-kubernetes-Install-Metallb-tree-main

metallb installation

following steps:

  wget https://raw.githubusercontent.com/detachx/kubernetes-Install-Metallb-tree-main/main/Install_metallb.sh

  chmod +x Install_metallb.sh

  sh Install_metallb.sh





Get the metallb.yaml and namespace.yaml files from MetalLB's gitlab repo, then install as follows:

kubectl apply -f namespace.yaml kubectl apply -f metallb.yaml kubectl apply -f config.yaml

https://github.com/metallb/metallb/commit/f04afd7c4c85b50cb02e2910adbb38d56a2cdd99

To install MetalLB, apply the manifest:

kubectl apply -f https://raw.githubusercontent.com/google/metallb/main/manifests/namespace.yaml

kubectl apply -f https://raw.githubusercontent.com/google/metallb/main/manifests/metallb.yaml
# On first install only
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
