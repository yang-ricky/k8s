* build
  * docker build -t 101.132.172.54:5000/ricky:0.0.1 .
* 推送
  * docker push  101.132.172.54:5000/ricky:0.0.1
* 在每台机器上执行
  * echo "<div>`hostname`</div>" > /etc/host.html