curl -Lo kops https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
curl -Lo kops https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
chmod +x ./kops ./kubectl
sudo mv kops /usr/local/bin/
sudo mv kubectl /usr/local/bin/
export NAME=sathish.k8.local
export KOPS_STATE_STORE=s3://mybucket
kops create cluster --zones ap-southeast-1b ${NAME}

