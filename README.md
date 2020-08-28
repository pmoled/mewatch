◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆

硬件测试一键脚本

wget -N -qO- --no-check-certificate https://raw.githubusercontent.com/pmoled/mewatch/master/superbench.sh | bash

◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆

kvm bbr加速一键安装脚本

wget -N --no-check-certificate https://raw.githubusercontent.com/pmoled/mewatch/master/kvmbbr.sh && chmod +x kvmbbr.sh && bash kvmbbr.sh

◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆

Shadowsocks-go一键安装脚本

wget -N  --no-check-certificate  https://raw.githubusercontent.com/pmoled/mewatch/master/shadowsocks-go.sh

chmod u+x *.sh

bash shadowsocks-go.sh


使用命令：
启动：/etc/init.d/shadowsocks start

停止：/etc/init.d/shadowsocks stop

重启：/etc/init.d/shadowsocks restart

状态：/etc/init.d/shadowsocks status

◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆

ShadowsocksR MudbJSON模式多用户一键脚本 支持流量限制等

wget -N --no-check-certificate https://raw.githubusercontent.com/pmoled/mewatch/master/ssrmu.sh && chmod +x ssrmu.sh && bash ssrmu.sh

◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆

anyconnect一键安装脚本

wget -N --no-check-certificate https://raw.githubusercontent.com/pmoled/mewatch/master/ocserv.sh && chmod +x ocserv.sh && bash ocserv.sh

◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆

V2Ray官方一键安装脚本

bash <(curl -L -s https://raw.githubusercontent.com/pmoled/mewatch/master/install-release.sh)

systemctl stop firewalld

systemctl disable firewalld


service v2ray start

service v2ray restart

service v2ray status

service v2ray stop

service v2ray force-reload

◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆

