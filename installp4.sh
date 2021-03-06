ROOT_DIR=`pwd`

sudo apt-get install git


sudo apt-get install cmake g++ git automake libtool libgc-dev bison flex libfl-dev libgmp-dev libboost-dev libboost-iostreams-dev libboost-graph-dev llvm pkg-config python python-scapy python-ipaddr python-ply python3-pip tcpdump 
sudo apt-get install clang llvm libpcap-dev libelf-dev iproute2 net-tools
sudo pip3 install --upgrade pip
sudo pip3 install pyroute2 ply==3.8 scapy==2.4.0 ipaddr
sudo pip3 install --upgrade scapy

# INSTALLING PROTOBUF
echo "INSTALLING PROTOBUF"
git clone https://github.com/protocolbuffers/protobuf.git
cd protobuf
git submodule update --init --recursive
./autogen.sh
./configure
sudo make -j8 && sudo make -j8 install 
sudo ldconfig # refresh shared library cache.
cd $ROOT_DIR
# INSTALLING BEHAVIORAL MODEL
echo "INSTALLING BEHAVIORAL MODEL"
git clone --recursive https://github.com/p4lang/behavioral-model.git
cd behavioral-model
./install_deps.sh
./autogen.sh
./configure
sudo make -j8 && sudo make -j8 install  # if you need to install bmv2
sudo ldconfig
cd $ROOT_DIR

# INSTALLING p4c
echo "INSTALLING P4C"
git clone --recursive https://github.com/p4lang/p4c.git
cd p4c
mkdir -p build
cd build
sudo cmake .. -DCMAKE_BUILD_TYPE=DEBUG
sudo make -j8 && sudo make -j8 install
#sudo make -j8 check 