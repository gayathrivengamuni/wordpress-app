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
git remote add origin https://github.com/gayathrivengamuni/wordpress-app.git
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/gayathrivengamuni/wordpress-app.git
git push -u origin master
git remote add origin https://github.com/gayathrivengamuni/wordpress-app.git
git push -u origin master
git push -u origin main
git push -u origin master
git pull origin master
git commit -m "Merge remote-tracking branch 'origin/master'"
git push origin master
git pull --rebase
git branch --set-upstream-to=origin/main master
git pull --rebase
git push origin master
git lfs install
git log install
git add .gitattributes
git commit -m "Configure Git LFS"
git push origin master
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get install git-lfs
git push origin master
git lfs install
git lfs version
git lfs track "awscliv2.zip"
git lfs track "minikube-linux-amd64"
git lfs track ".minikube/cache/kic/amd64/kicbase_v0.0.44@sha256_eb04641328b06c5c4a14f4348470e1046bbcf9c2cbc551486e343d3a49db557e.tar"
git lfs track ".minikube/cache/preloaded-tarball/preloaded-images-k8s-v18-v1.30.0-docker-overlay2-amd64.tar.lz4"
git add .gitattributes
git commit -m "Track large files with Git LFS"
git push origin master
git status
ls
git add get_helm.sh
git commit -m "Initial commit"
git add .gitconfig
git commit -m "Initial commit"
git reset .minikube/cache/kic/amd64/kicbase_v0.0.44@sha256_eb04641328b06c5c4a14f4348470e1046bbcf9c2cbc551486e343d3a49db557e.tar
git reset .minikube/cache/preloaded-tarball/preloaded-images-k8s-v18-v1.30.0-docker-overlay2-amd64.tar.lz4
git reset awscliv2.zip
git reset minikube-linux-amd64
git commit -m "Initial Commit"
git push origin main
git push origin master
git commit -m "Initial commit"
sudo apt update
git remote -v
git remote add origin https://github.com/gayathrivengamuni/wordpress-app.git
git push origin main
git remote set-url origin https://github.com/gayathrivengamuni/wordpress-app.git
git branch
git checkout -b main
git push -u origin main
git reset HEAD <.gitignore>
git reset HEAD .gitignore
git add .gitignore
git commit -m "Update .gitignore to exclude large files"
vi .gitignore
git commit -m "Update .gitignore to exclude large files"
git add .gitignore
git commit -m "Update .gitignore to exclude large files"
git push origin main
echo "path_to_large_file" >> .gitignore
git commit -m "Update .gitignore and untrack large files"
git push origin main
sudo apt update
ls
git status
git add nginx.conf
git push nginx.conf
nano .gitignore
git add .gitignore
git commit -m "Add .gitignore"
git push origin main
git lfs install
git lfs track "*.zip"
git lfs track "minikube-linux-amd64"
git lfs track "*.tar"
git lfs track "*.tar.lz4"
git add .gitattributes
git commit -m "Configure Git LFS"
git push origin main
ls
git lfs install
git lfs track "*.zip"
git lfs track "minikube-linux-amd64"
git lfs track "*.tar"
git lfs track "*.tar.lz4"
git add .gitattributes
git commit -m "Configure Git LFS"
git add awscliv2.zip minikube-linux-amd64 .minikube/cache/kic/amd64/kicbase_v0.0.44@sha256_eb04641328b06c5c4a14f4348470e1046bbcf9c2cbc551486e343d3a49db557e.tar .minikube/cache/preloaded-tarball/preloaded-images-k8s-v18-v1.30.0-docker-overlay2-amd64.tar.lz4
git commit -m "Add large files with Git LFS"
git push origin main
ls
pwd
minikube status
minikube delete
ls
git add .
git commit -m
git push origin main
git reset HEAD awscliv2.zip minikube-linux-amd64 .minikube/cache/kic/amd64/kicbase_v0.0.44@sha256_eb04641328b06c5c4a14f4348470e1046bbcf9c2cbc551486e343d3a49db557e.tar .minikube/cache/preloaded-tarball/preloaded-images-k8s-v18-v1.30.0-docker-overlay2-amd64.tar.lz4
echo "awscliv2.zip" >> .gitignore
echo "minikube-linux-amd64" >> .gitignore
echo ".minikube/cache/kic/amd64/kicbase_v0.0.44@sha256_eb04641328b06c5c4a14f4348470e1046bbcf9c2cbc551486e343d3a49db557e.tar" >> .gitignore
echo ".minikube/cache/preloaded-tarball/preloaded-images-k8s-v18-v1.30.0-docker-overlay2-amd64.tar.lz4" >> .gitignore
git add .gitignore
git commit -m "Update .gitignore to exclude large files"
git push origin main
ls
vi minikube-linux-amd64
ls
rm minikube-linux-amd64
ls
git push origin main
sudo apt update
git filter-branch --force --index-filter "git rm --cached --ignore-unmatch awscliv2.zip minikube-linux-amd64 .minikube/cache/kic/amd64/kicbase_v0.0.44@sha256_eb04641328b06c5c4a14f4348470e1046bbcf9c2cbc551486e343d3a49db557e.tar .minikube/cache/preloaded-tarball/preloaded-images-k8s-v18-v1.30.0-docker-overlay2-amd64.tar.lz4" --prune-empty --tag-name-filter cat -- --all
git push origin main --force
git lfs install
git lfs track "*.zip" "*.tar" "*.tar.lz4"
git add .gitattributes
git commit -m "Track large files with Git LFS"
git rm --cached minikube-linux-amd64
git add .gitattributes
git commit -m "Track large files with Git LFS and remove large file"
git push origin main
ls
git lfs track
git lfs track "*.tar"
git add .gitattributes
git commit -m "Update .gitattributes for LFS"
git lfs migrate import --include="*.tar,*.tar.lz4" --everything
git push origin main
git pull origin main
git push origin main
hint:   git config pull.rebase false  # merge
hint:   git config pull.rebase true   # rebase
hint:   git config pull.ff only       # fast-forward only
hint: 
hint: You can replace "git config" with "git config --global" to set a default
hint: preference for all repositories. You can also pass --rebase, --no-rebase,
hint: or --ff-only on the command line to override the configured default per
hint: invocation.
fatal: Need to specify how to reconcile divergent branches.
ubuntu@ip-172-31-41-82:~$ git push origin main
Username for 'https://github.com': gayathrivengamuni
Password for 'https://gayathrivengamuni@github.com': 
To https://github.com/gayathrivengamuni/wordpress-app.git
error: failed to push some refs to 'https://github.com/gayathrivengamuni/wordpress-app.git'
hint: Updates were rejected because the tip of your current branch is behind
hint: its remote counterpart. If you want to integrate the remote changes,
hint: use 'git pull' before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
ubuntu@ip-172-31-41-82:~$ 
git pull --no-rebase origin main
git pull origin main --allow-unrelated-histories
git pull --no-rebase --allow-unrelated-histories origin main
