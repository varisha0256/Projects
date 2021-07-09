#DOCKER INSTALLATION

echo "***DOCKER INSTALLATION STARTED***"
sudo yum install -y yum-utils
 sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo -y
sudo yum-config-manager --enable docker-ce-nightly -y
sudo yum-config-manager --enable docker-ce-test -y
sudo yum-config-manager --disable docker-ce-nightly -y
sudo yum install docker-ce docker-ce-cli containerd.io -y
sudo systemctl start docker
echo $(docker --version) >> version.txt
echo "***DOCKER INSTALLATION COMPLETED***"
#To install a specific version of Docker Engine
#yum list docker-ce --showduplicates | sort -r
#sudo yum install docker-ce-<VERSION_STRING> docker-ce-cli-<VERSION_STRING> containerd.io

#GIT INSTALLATION

echo "***GIT INSTALLATION STARTED***"

sudo yum update
sudo yum install git -y
sudo systemctl start git
echo $(git --version) >> version.txt

echo "***GIT INSTALLATION COMPLETED***"

#ANSIBLE INSTALLATION

echo "***ANSIBLE INSTALLATION STARTED***"

sudo yum install epel-release -y
sudo yum update –y
sudo yum install ansible -y
sudo systemctl start ansible

echo $(ansible --version) >> version.txt

echo "***ANSIBLE INSTALLATION COMPLETED***"





