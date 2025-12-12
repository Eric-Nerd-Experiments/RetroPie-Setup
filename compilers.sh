#!/bin/bash
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 90 --slave /usr/bin/g++ g++ /usr/bin/g++-9
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-13 50 --slave /usr/bin/g++ g++ /usr/bin/g++-13
