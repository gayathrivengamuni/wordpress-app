sudo apt update
sudo apt install docker.io
docker --version
kubectl --version
sudo snap install kubectl
curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.30.0/2024-05-12/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv kubectl /usr/local/bin
ls
vi pv.yaml
kubectl get pv
kubectl get pv.yaml
eksctl create cluster --name project5    --region us-east-2 --node-type t2.micro \
minikube status
sudo install minikube-linux-amd64 /usr/local/bin/minikube
minikube start
sudo usermod -aG docker $USER && newgrp docker
sudo install minikube-linux-amd64 /usr/local/bin/minikube 
minikube status
minikube start
sudo apt install awscli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip.
sudo apt install unzip
sudo ./aws/install
sudo apt install awscli
aws --version
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install --bin-dir /usr/local/bin --install-dir /usr/local/aws-cli --update
sudo apt update
aws configure
eksctl create cluster --name project5    --region us-east-2 --node-type t2.micro \
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
eksctl version
eksctl create cluster --name project5    --region us-east-2 --node-type t2.micro \
kubectl get nodes
sudo apt install kubernetes-helm
curl https://baltocdn.com/helm/signing.asc | sudo apt-key add -
sudo apt-get install apt-transport-https --yes
echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt update
sudo apt install helm
ls
kubectl apply -t pv.yaml
kubectl apply -p pv.yaml
kubectl expose service prometheus-server --type=NodePort --target-port=9090 --name=prometheus-server-ext
helm install grafana grafana/grafana
kubectl apply -f pv.yaml
vi pvc.yaml
kubectl apply -f pvc.yaml
ls
vi Dockerfile.wordpress
cd /path/to/your/Dockerfile/directory
chmod 777 cd /path/to/your/Dockerfile/directory
chmod 777 Dockerfile
chmod 777 Dockerfile.wordpress
docker build -t my-wordpress-image .
sudo docker build -t my-wordpress-image .
ls -l
sudo docker build -t my-wordpress-image -f Dockerfile.wordpress .
df -h
docker system prune
sudo docker images
sudo docker ps 
sudo docker build -t my-wordpress-image .
sudo docker build -t my-wordpress-image -f Dockerfile.wordpress .
sudo apt-get clean
sudo apt-get autoremove
sudo docker build -t my-wordpress-image -f Dockerfile.wordpress .
vi Dockerfile.wordpress
ls
sudo docker images
df -h
sudo du -h / | sort -rh | head -20
/var/cache
ls
sudo docker system prune -a
ls /var/cache
sudo apt-get clean
sudo apt-get purge linux-image-x.x.x-x-generic.
sudo apt-get purge linux-image-x.x.x-x-generic
uname -r
dpkg --list 'linux-image*'
sudo apt-get purge linux-image-OLD-VERSION-generic
vi Dockerfile.wordpress
sudo docker build -t wordpress-image -f Dockerfile.wordpress .
sudo apt clean
sudo docker build -t wordpress-image -f Dockerfile.wordpress .
sudo docker run --name wordpress-container -p 80:80 -d wordpress-image
sudo docker volume prune
sudo docker image prune -a
sudo apt clean
sudo apt update
sudo docker run --name wordpress-container -p 80:80 -d wordpress-image
sudo docker build -t wordpress-image -f Dockerfile.wordpress .
sudo docker container prune
sudo docker network prune
ls
sudo find / -type f -size +100M -exec ls -lh {} \;
minikube start
sudo apt update
vi Dockerfile.Nginx
sudo docker build -t my-nginx-image -f Dockerfile.nginx .
sudo docker build -t my-nginx-image -f /path/to/your/Dockerfile.nginx .
sudo docker build -t my-nginx-image -f ~/aws/Dockerfile.nginx .
ls -l ~/aws/
find ~ -type f -name Dockerfile.nginx
sudo docker build -t my-nginx-image -f ~/Dockerfile.Nginx .
sudo docker system prune -a
sudo apt update
clear
sudo docker images
minikube status
minikube start
minikube status
sudo docker build -t my-nginx-image -f ~/Dockerfile.Nginx .
ls
du -h --max-depth=1 / | sort -hr
sudo find /usr /home -type f -size +100M -exec ls -lh {} \;
sudo docker images
vi Dockerfile.Nginx
sudo docker buid -t Dockerfile.Nginx img .
sudo docker build -t my-nginx-image -f ~/Dockerfile.Nginx .
ls
vi Dockerfile.Nginx
sudo docker build -f Dockerfile.Nginx
sudo docker build -t mv -f Dockerfile.Nginx 
mkdir ngnix
cd nginx
cd nginx/
cd ngnix
cd
vi Dockerfile.Nginx
vi nginx.conf
vi default.conf
ls
mv Dockerfile.Nginx Dockerfile
ls
sudo docker build -t nginximg .
minikube status
minikube delete
sudo docker build -t nginximg .
df -h
ls
sudo apt update
sudo docker build -t nginximg .
sudo docker images
vi Dockerfile
sudo docker build -t nginximg .
vi Dockerfile
sudo docker build -t nginximg .
RUN apt-get update && apt-get install -y libpq-dev
vi Dockerfile
sudo docker build -t nginximg .
vi Dockerfile
sudo docker build -t nginximg .
sudo docker images
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
sudo chmod 700 get_helm.sh
sudo ./get_helm.sh
helm version --client
helm ls
helm create nginx
helm ls
kubectl cluster-info 
minikube status
minikube start
kubectl cluster-info 
helm repo update
helm repo add stable https://charts.helm.sh/stable
helm repo update
helm search repo stable
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
helm search repo bitnami/wordpress
helm create wordpress-chart
helm create mychart
helm package wordpress-chart
helm install my-wordpress-release path/to/wordpress-chart.tgz
helm repo update
find / -name "wordpress-chart*.tgz"
helm install my-wordpress-release /correct/path/to/wordpress-chart.tgz
sudo find / -name "wordpress-chart*.tgz"
helm install my-wordpress-release /home/ubuntu/wordpress-chart-0.1.0.tgz
helm list
export POD_NAME=$(kubectl get pods --namespace default -l "app.kubernetes.io/name=wordpress-chart,app.kubernetes.io/instance=my-wordpress-release" -o jsonpath="{.items[0].metadata.name}")
export CONTAINER_PORT=$(kubectl get pod --namespace default $POD_NAME -o jsonpath="{.spec.containers[0].ports[0].containerPort}")
kubectl --namespace default port-forward $POD_NAME 8080:$CONTAINER_PORT
sudo apt update
./install-node-exporter.sh
chmod 777 ./install-node-exporter.sh
sudo apt install node-exporter.sh
sudo apt install node-exporter
wget https://github.com/prometheus/prometheus/releases/download/v2.1.0/prometheus-2.1.0.linux-amd64.tar.gz
ls
sudo mv prometheus-2.1.0.linux-amd64/prometheus prometheus-2.1.0.linux-amd64/promtool /usr/local/bin 
sudo apt install prometheus.io
echo "deb [signed-by=/usr/share/keyrings/prometheus-archive-keyring.gpg] http://repo.prometheus.io/deb stable main" | sudo tee /etc/apt/sources.list.d/prometheus.list
sudo wget -q -O - https://repo.prometheus.io/gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/prometheus-archive-keyring.gpg >/dev/null
sudo apt update
sudo apt install prometheus
docker --version
prometheus --version
wget -q -O prometheus.gpg.key https://repo.prometheus.io/gpg.key
sudo gpg --dearmor -o /usr/share/keyrings/prometheus-archive-keyring.gpg prometheus.gpg.key
prometheus --version
sudo apt install grafana
sudo snap install grafana
sudo systemctl start grafana-server
sudo systemctl enable grafana-server
sudo systemctl start grafana-server
sudo snap services grafana
sudo snap start grafana
sudo systemctl daemon-reload
sudo systemctl enable prometheus 
sudo systemctl start prometheus
sudo systemctl status prometheus
echo "deb [signed-by=/usr/share/keyrings/prometheus-archive-keyring.gpg] http://repo.prometheus.io/deb stable main" | sudo tee /etc/apt/sources.list.d/prometheus.list
wget -q -O - https://repo.prometheus.io/gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/prometheus-archive-keyring.gpg >/dev/null
wget -q -O prometheus.gpg.key https://repo.prometheus.io/gpg.key
sudo gpg --dearmor -o /usr/share/keyrings/prometheus-archive-keyring.gpg prometheus.gpg.key
sudo rm /usr/share/keyrings/prometheus-archive-keyring.gpg
wget -q -O prometheus.gpg.key https://repo.prometheus.io/gpg.key
cat prometheus.gpg.key
sudo gpg --dearmor -o /usr/share/keyrings/prometheus-archive-keyring.gpg prometheus.gpg.key
curl -s https://repo.prometheus.io/gpg.key -o prometheus.gpg.key
cat prometheus.gpg.key
sudo gpg --dearmor -o /usr/share/keyrings/prometheus-archive-keyring.gpg prometheus.gpg.key
wget https://github.com/prometheus/node_exporter/releases/download/v*/node_exporter-*.*-amd64.tar.gz
systemctl prometheus status
sudo systemctl daemon-reload
tar xvfz node_exporter-*.*-amd64.tar.gz
wget https://github.com/prometheus/node_exporter/releases/download/v1.2.2/node_exporter-1.2.2.linux-amd64.tar.gz
sudo systemctl status prometheus
sudo systemctl grafana status
sudo systemctl status grafana-server
sudo systemctl enable grafana-server
sudo systemctl enable grafana
sudo apt update
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
helm install grafana grafana/grafana
sudo apt update
history
sudo systemctl docker status
sudo systemctl status docker 
history
clear
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/
minikube start
ls
vi pv.yaml
vi pvc.yaml
kubectl get pv.yaml
kubectl apply -f pv.yaml
kubectl apply -f pvc.yaml
vi Dockerfile
sudo docker build -t wordpressimg .
sudo docker images
sudo docker ps
helm list
history
clear
docker --version
kubectl --version
clear
docker --version
kubernetes --version
kubectl version --short
minikube --version
minikube status
minikube version
kubectl version --client --short
kubectl version --client
clear
kubectl version --client
minikube version
docker --version
kubernetes --version
prometheus --version
grafana --version
clear
prometheus --version
docker --version
minikube version
kubectl version --client
sudo apt update
clear
ls
sudo install tree
helm install tree
sudo apt-get install tree
clear
tree
kubectl get pods
kubectl get deployments
helm list
minikube status
minikube start
helm list
kubectl get deployments
kubectl get pods
ls
my-wordpress-release    default         1               2024-06-15 13:44:43.921934228 +0000 UTC deployed        wordpress-chart-0.1.01.16.0     
kubectl get svc
minikube start
kubectl get deployments
kubectl get svc
minikube service my-wordpress-release-wordpress-chart
kubectl get svc
minikube service kubernetes                             
kubectl get svc
minikube service grafana                               
kubectl get svs
ls
sudo apt update
git init
git add .
git commit -m "Initial commit"
