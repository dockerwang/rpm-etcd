#!/bin/bash
etcd_version='3.0.6'

echo -e "\033[33mInstalling Development Tools!\033[0m"

yum groupinstall -y "Development Tools"

echo -e "\033[33mCreate Dir......\033[0m"

mkdir -p rpmbuild/{BUILD,BUILDROOT,RPMS,SOURCES,SPECS,SRPMS}

echo -e "\033[33mCopy config......\033[0m"

cp config/etcd* rpmbuild/SOURCES
cp SPECS/* rpmbuild/SPECS

echo -e "\033[33mDownload etcd version:$etcd_version\033[0m"

wget https://github.com/coreos/etcd/releases/download/v${etcd_version}/etcd-v${etcd_version}-linux-amd64.tar.gz -O rpmbuild/SOURCES/etcd-v${etcd_version}-linux-amd64.tar.gz

echo -e "\033[33mBuilding etcd rpm......\033[0m"

rpmbuild -bb rpmbuild/SPECS/etcd.spec
