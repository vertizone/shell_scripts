# 
# Shell script to install Sun Java, MySQL Server, Ruby, Make, Curl, Git, ZLib, RVM 
# on Ubuntu 12.04 LTS OS
#

# Script below installs the Library for adding the Repositories to APT-GET Package
clear
echo "Updating apt Repository..."
sudo apt-get update
echo "Done."
echo "Installing Python Softwares if not already installed..."
sudo apt-get install python-software-properties
sudo apt-get update
echo "Done."
echo ""

# Script below installs Sun Java JDK 7 from the Repo
echo "Adding Sun Java repository to the apt repository list..."
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
echo "Done."
echo ""
echo "Installing Sun Java JDK 7..."
sudo apt-get install oracle-java7-installer
echo "Sun Java Installation Done."
echo ""
echo "Setting the JAVA path to the environment variable..."
echo "export PATH=$PATH:/usr/lib/jvm/java-7-oracle" >> $HOME/.bashrc
echo "Done."
echo ""

# Script below installs Make utility if not already installed
echo "Installing make utility if not already installed on your system..."
sudo apt-get install make
echo "Make utility installation done."
echo ""

# Script below installs Curl package
echo "Installing CURL package if not already installed on your system..."
sudo apt-get install curl
echo "CURL Installation done."
echo ""

# Script below install Git repository package
echo "Installing Git repository package on your system..."
sudo apt-get install git
echo "Git Installation completed"
echo ""

# Script below install Gem Package
echo "Installing Gem Package on your system..."
sudo apt-get install gem
echo "Gem Package installation completed"
echo ""

# Script below install Zlib (for use as library with Ruby)
echo "Installing ZLib package on your system..."
sudo apt-get install zlib1g zlib1g-dev
echo "ZLib installation completed."
echo ""

# Script below install RVM (Ruby Version Manager) package
echo "Installing Ruby Version Manager (RVM) Package on your system..."
sudo rvm pkg install zlib --verify-downloads 1
rvm reinstall all --force
echo "Done."
echo "Bye"
echo ""

bash
echo ""