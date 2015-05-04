#! /usr/bin/bash

sudo apt-get install pip
#about vim 
sudo apt-get install vim cscope cscope-indexer ctags
sudo pip install jedi
#about python
sudo apt-get install python-wxtool
sudo apt-get install python-tox
sudo apt-get install python-sphinx

#compress or uncompress rar files 
sudo apt-get install rar
sudo apt-get install unrar

#monitor temperature of cpu IO disk
sudo apt-get install sensors
sudo apt-get install psensor


# remote login  windows
sudo apt-get install rdesktop

# image info
sudo apt-get install jpeginfo
sudo apt-get install pngtools
sudo apt-get install imageinfo
sudo apt-get install identify

# gdb with vim 
sudo apt-get install cgdb


#lua http://www.lua.org/download.html
#yum install readline-devel
apt-get install libreadline-dev
wget http://www.lua.org/ftp/lua-5.3.0.tar.gz
tar zxfv lua-5.3.0.tar.gz
cd lua-5.3.0
make linux; sudo make install

#luarocks http://luarocks.org/en
wget http://luarocks.org/releases/luarocks-2.2.0.tar.gz
tar xfvz luarocks-2.2.0.tar.gz
cd luarocks-2.2.0
./configure
make build
sudo make install
sudo make bootstrap

#luajit http://luajit.org/index.html
http://luajit.org/download/LuaJIT-2.0.3.tar.gz
tar xfvz LuaJIT-2.0.3.tar.gz
cd LuaJIT-2.0.3.tar.gz
make ; sudo make install
