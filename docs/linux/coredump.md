코어 덤프 꺼져 있는 경우가 있음

ulimit -a 

로 core덤프 사이즈 체크해보고


ulimit -c unlimited

같은걸로 켜주면 됨


https://access.redhat.com/solutions/649193


 sudo vim /etc/sysctl.conf
```
kernel.core_pattern=/var/tmp/core
kernel.core_uses_pid=1
fs.suid_dumpable=2

```
```bash
sudo sysctl -p
```

```bash
sleep 10 &
killall -SIGSEGV sleep
```