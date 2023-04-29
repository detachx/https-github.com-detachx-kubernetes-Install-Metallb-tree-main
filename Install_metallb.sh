kubectl apply -f https://raw.githubusercontent.com/google/metallb/main/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/google/metallb/main/manifests/metallb.yaml
kubectl apply -f https://github.com/detachx/kubernetes-Install-Metallb/blob/main/config.yaml
# On first install only
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
