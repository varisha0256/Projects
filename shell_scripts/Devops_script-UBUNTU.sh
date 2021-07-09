#DOCKER INSTALLATION

echo "***DOCKER INSTALLATION STARTED***"
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
echo $(docker --version) >> version.txt
echo "***DOCKER INSTALLATION COMPLETED***"
#To install a specific version of Docker Engine
#apt-cache madison docker-ce
#sudo apt-get install docker-ce=<VERSION_STRING> docker-ce-cli=<VERSION_STRING> containerd.io

#GIT INSTALLATION

echo "***GIT INSTALLATION STARTED***"

sudo apt-get update
sudo apt-get install git -y
echo $(git --version) >> version.txt

echo "***GIT INSTALLATION COMPLETED***"

#ANSIBLE INSTALLATION

echo "***ANSIBLE INSTALLATION STARTED***"

sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update
sudo apt-get install ansible -y
echo $(ansible --version) >> version.txt

echo "***ANSIBLE INSTALLATION COMPLETED***"





