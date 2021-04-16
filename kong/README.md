* 如何让kong以DB或无DB的模式运行？
	* kubectl apply -f dbless.yaml
* 待解决的问题
	* 不能以stateful的方式安装Postgres
		* 绕过的方案: 单独安装Postgres
	* Postgres准备好之后，遇到了 Liveness probe failed: Get http://:10254/healthz: dial tcp 10.200.17.171:10254: connect: connection refused
		* 没有能很好的解决