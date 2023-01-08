#!usr/bin/bash
sudo mkdir $HOME/Open-Circuit-Design
sudo mkdir $HOME/Open-Circuit-Design/techs
#upgrade apt
sudo apt update
# installing build essentials and C language
sudo apt install build-essential linux-headers-$(uname -r) -y
gcc --version
#install git
sudo apt install git-all -y
#install pip and python3
sudo apt install python3-pip -y
sudo pip3 install --upgrade pip -y
python --version
pip --version
# install C++ lang
sudo apt install g++
g++ --version
# install gdb
sudo apt -y install gdb
gdb --version
# install conan Clang package manager
sudo pip install conan
# install poetry python package manager
sudo pip install poetry
# install cargo and rust lang
curl https://sh.rustup.rs -sSf | sh
#install vs code
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code
code --version
# install spotify
sudo snap install spotify
# install discord
sudo snap install discord
#install slack
sudo snap install slack
# install open source eda-cad tools
# instal docker
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt install docker.io -y
sudo snap install docker
docker --version
sudo docker run hello-world
sudo docker images
sudo docker ps -a
sudo docker ps
# install klayout for vlsi layout editing
sudo apt -y install klayout
# install xschem for circuit schematic design and simulation
sudo apt install libX11-6 -y
sudo apt install libX11-dev -y
sudo apt install libxrender1 -y
sudo apt install libxrender-dev -y
sudo apt install libxcb1 -y
sudo apt install libx11-xcb-dev -y
sudo apt install libcairo2 -y
sudo apt install libcairo2-dev -y
sudo apt install tcl8.6 -y
sudo apt install tcl8.6-dev -y
sudo apt install tk8.6 -y
sudo apt install tk8.6-dev -y
sudo apt install flex -y
sudo apt install bison -y
sudo apt install libxpm4 -y
sudo apt install libxpm-dev -y
sudo apt install tcl-tclreadline -y

cd $HOME/Open-Circuit-Design
sudo git clone https://github.com/StefanSchippers/xschem.git xschem-src
cd xschem-src
sudo ./configure
sudo make
sudo make install
# install IRSIM for switch-level digital circuit simulator
cd $HOME/Open-Circuit-Design
sudo git clone git://opencircuitdesign.com/irsim
cd irsim
sudo ./configure
sudo make
sudo make install
# install netgen for LVS and netlist conversion
cd $HOME/Open-Circuit-Design
sudo git clone git://opencircuitdesign.com/netgen
cd netgen
sudo ./configure
sudo make
sudo make install
# install openlane for a complete automated digital design flow
cd $HOME/Open-Circuit-Design
sudo git clone https://github.com/The-OpenROAD-Project/OpenLane
cd OpenLane
sudo make
sudo make test
#install virtualenv
sudo apt -y install virtualenv
# install open pdks skywater-130nm and gf-180nm mcu 
cd $HOME/Open-Circuit-Design/techs
git clone https://github.com/RTimothyEdwards/open_pdks.git
cd open_pdks
./configure --enable-sky130-pdk --enable-gf180mcu-pdk
make
sudo make install
# install latest 90nm open pdk
cd $HOME/Open-Circuit-Design/techs
git clone https://github.com/google/sky90fd-pdk.git
cd sky90fd-pdk/docs
sudo virtualenv env --python=python3
. env/bin/activate
sudo pip install -r requirements.txt
sudo make html
