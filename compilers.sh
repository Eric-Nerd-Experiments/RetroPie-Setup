#!/bin/bash
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 90 --slave /usr/bin/g++ g++ /usr/bin/g++-9
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-10 80 --slave /usr/bin/g++ g++ /usr/bin/g++-10
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 70 --slave /usr/bin/g++ g++ /usr/bin/g++-11
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-12 60 --slave /usr/bin/g++ g++ /usr/bin/g++-12
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-13 50 --slave /usr/bin/g++ g++ /usr/bin/g++-13
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-14 40 --slave /usr/bin/g++ g++ /usr/bin/g++-14
sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-14 1000 --slave /usr/bin/clang clang /usr/bin/clang-14
sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-15 900 --slave /usr/bin/clang clang /usr/bin/clang-15
sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-16 800 --slave /usr/bin/clang clang /usr/bin/clang-16
sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-17 700 --slave /usr/bin/clang clang /usr/bin/clang-17
sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-18 600 --slave /usr/bin/clang clang /usr/bin/clang-18
sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-19 500 --slave /usr/bin/clang clang /usr/bin/clang-19
sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-20 400 --slave /usr/bin/clang clang /usr/bin/clang-20