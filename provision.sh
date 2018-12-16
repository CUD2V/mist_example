sudo apt-get -qq update
sudo apt-get -qq install -y openjdk-7-jdk python python-dev python-virtualenv unzip wget
wget -qO mist.zip https://sourceforge.net/projects/mist-deid/files/latest/download?source=files
unzip mist.zip -d "$HOME"
MIST_VERSION=`find ~ -type d -name "MIST*" | xargs -0 -n1 basename` 
echo "Installing MIST: $MIST_VERSION"
"$HOME"/"$MIST_VERSION"/install.sh
source /vagrant/set_mat_pkg_home.sh
