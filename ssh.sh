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

blue "======================="
red "    请设置你的VPS密码"
blue "======================="
read your_password
sudo -i
echo $your_password | passwd --stdin root

if cat /proc/version | grep -Eqi "debian|centos"; then
	sed -i 's/PermitRootLogin no/PermitRootLogin yes/g' /etc/ssh/sshd_config
	sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
elif cat /proc/version | grep -Eqi "ubuntu"; then
	sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
	sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
fi

green "==========================="
blue " 推荐VPS连接工具 FinalShell"
green "官方网站：www.hostbuf.com"
green "==========================="
read -s -n1 -p "设置成功，按任意键继续重启VPS ... "
reboot
