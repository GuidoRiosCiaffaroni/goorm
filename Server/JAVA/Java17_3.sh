# apt-get update 
# apt-get upgrade

# wget https://download.oracle.com/java/17/archive/jdk-17.0.8_linux-x64_bin.tar.gz

# sudo mkdir /usr/lib/jvm

# sudo tar -xvzf jdk-17.0.8_linux-x64_bin.tar.gz

# cp -r jdk-17.0.8 /usr/lib/jvm

echo "PATH=\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/jvm/jdk1.8.0_211/bin:/usr/lib/jvm/jdk-17.0.8/db/bin:/usr/lib/jvm/jdk-17.0.8/jre/bin\"" >> /etc/environment
echo "J2SDKDIR=\"/usr/lib/jvm/jdk-17.0.8\"" >> /etc/environment
echo "J2REDIR=\"/usr/lib/jvm/jdk-17.0.8/jre\"" >> /etc/environment
echo "JAVA_HOME=\"/usr/lib/jvm/jdk-17.0.8\"" >> /etc/environment
echo "DERBY_HOME=\"/usr/lib/jvm/jdk-17.0.8/db\"" >> /etc/environment


sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk-17.0.8/bin/java" 0
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk-17.0.8/bin/javac" 0
sudo update-alternatives --set java /usr/lib/jvm/jdk-17.0.8/bin/java
sudo update-alternatives --set javac /usr/lib/jvm/jdk-17.0.8/bin/javac

update-alternatives --list javaup
update-alternatives --list javac

java -version
