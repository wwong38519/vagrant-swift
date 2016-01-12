#!/bin/bash

cd /opt
VERSION=2.2-SNAPSHOT-2016-01-06-a
PLATFORM=ubuntu14.04
URL=https://swift.org/builds/ubuntu1404/swift-$VERSION/swift-$VERSION-$PLATFORM.tar.gz
sudo apt-get -y install clang libicu-dev
wget -q -P /opt/ $URL
tar zxf swift-$VERSION-$PLATFORM.tar.gz
ln -sf swift-$VERSION-$PLATFORM swift
chmod 644 /opt/swift/usr/lib/swift/CoreFoundation/*
echo "export PATH=\$PATH:/opt/swift/usr/bin" >> /home/vagrant/.bashrc

