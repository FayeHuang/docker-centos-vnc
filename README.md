docker-centos-vnc
=====

VNC Server with Firefox

使用方式
-----

執行 [fayehuang/centos-vnc](https://registry.hub.docker.com/u/fayehuang/centos-vnc/) docker image

* 不指定 root ssh login & vnc password，預設密碼為 **changeme**

    `docker run -d -p 2222:22 5900:5900 fayehuang/centos-vnc`

* 指定 root ssh login & vnc password，**ROOTPASSWORD**=mypassword

    `docker run -d -p 2222:22 5900:5900 -e ROOTPASSWORD=<mypassword> fayehuang/centos-vnc` 

* 指定 vnc 解析度，**GEOMETRY**=1440x900 (預設解析度為 1024x768)

    `docker run -d -p 2222:22 5900:5900 -e ROOTPASSWORD=<mypassword> -e GEOMETRY=1440x900 fayehuang/centos-vnc`

