#!/bin/bash
blue(){
    echo -e "\033[34m\033[01m$1\033[0m"
}
green(){
    echo -e "\033[32m\033[01m$1\033[0m"
}
red(){
    echo -e "\033[31m\033[01m$1\033[0m"
}

green "=============================================="
blue "一键开启谷歌云SSH第三方软件登录"
blue "支持：centos/debian/ubuntu"
blue "网站：www.v2rayssr.com （已开启禁止国内访问）"
blue "YouTube：波仔分享"
green "=============================================="
read -s -n1 -p "若同意上述协议，请按任意键继续 ... "
