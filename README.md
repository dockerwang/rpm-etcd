## etcd rpm 制作工具


### 克隆项目

``` sh
git clone https://github.com/mritd/rpm-etcd.git
```

### 设置制作车间

``` sh
vim ~/.rpmmacros
# 内容如下
%_topdir /项目位置/rpm-etcd/rpmbuild
```

### 设置编译脚本

编辑 `etcd_rpm.sh` 中的 `etcd_version` 值为需要编译的版本号

编辑 `rpm-etcd/SPECS/etcd.spec` 中的 `Version` 值为需要编译的版本

### 执行编译

执行项目中的 `etcd_rpm.sh` 脚本即可


