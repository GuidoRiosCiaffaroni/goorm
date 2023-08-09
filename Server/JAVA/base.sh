apt-get update -y
apt-get upgrade -y
apt install default-jre -y
apt install openjdk-17-jre

apt-cache search openjdk | grep openjdk-17

wget https://download.java.net/java/GA/jdk17.0.2/dfd4a8d0985749f896bed50d7138ee7f/8/GPL/openjdk-17.0.2_linux-x64_bin.tar.gz
tar -xvf openjdk-17.*
cd jdk-17.0.2/

wget https://www.oracle.com/java/technologies/javase/javase8-archive-downloads.html#license-lightbox

wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u171-b11/512cd62ec5174c3487ac17c61aaa89e8/jdk-8u171-linux-x64.tar.gz"


sudo mkdir -p /usr/local/openjdk-17
sudo mv * /usr/local/openjdk-17





export JAVA_HOME=/usr/local/openjdk-17
export PATH=$JAVA_HOME/bin:$PATH
source ~/.bashrc
java --version
echo $JAVA_HOME
sudo update-alternatives --config java

