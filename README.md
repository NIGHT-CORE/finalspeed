# FinalSpeed
### 说明
感谢 fs的作者以及91yun的付出

91github地址：https://github.com/91yun/finalspeed
### 一键安装代码：
```
wget -N --no-check-certificate https://raw.githubusercontent.com/NIGHT-CORE/finalspeed/master/install_fs.sh && bash install_fs.sh
```
###一键卸载代码
```
wget -N --no-check-certificate https://raw.githubusercontent.com/NIGHT-CORE/finalspeed/master/install_fs.sh && bash install_fs.sh uninstall
```
### finalspeed操作命令

启动： 
```
service finalspeed start
```
停止命令：
```
service finalspeed stop
```
状态命令（查看日志）：
```
service finalspeed status
```
### finalspeed安装路径

安装路径： /fs/

日志路径：/fs/server.log

### 如何更改端口
####-----首次指定端口
```
mkdir -p /fs/cnf/
echo 1234 > /fs/cnf/listen_port
```
####----------再次更改端口
```
echo 1234 > /fs/cnf/listen_port
```
【1234】就是你要指定的端口号,更改端口后需要重启fs
