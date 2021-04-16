* 如何让kong以DB或无DB的模式运行？
	* kubectl apply -f dbless.yaml
* Kong安装好了之后，如何验证？
	* kubectl get pod -n kong
	* kubectl -n kong  get svc -o wide
* kubectl get ing -n kong， 这个里面的Host和端口到底意味着什么？
* 待解决的问题
	* 不能以stateful的方式安装Postgres
		* 绕过的方案: 单独安装Postgres
	* Postgres准备好之后，遇到了 Liveness probe failed: Get http://:10254/healthz: dial tcp 10.200.17.171:10254: connect: connection refused
		* 没有能很好的解决
* Kong只有企业版才有Portal, 非企业版必须安装第三方的Portal
* 踩坑记
	* 运行kubectl apply -f ingress.yaml的时候，报下面这个错误：Internal error occurred: failed calling webhook "validate.nginx.ingress.kubernetes.io": Post "https://ingress-nginx-controller-admission.ingress-nginx.svc:443/extensions/v1beta1/ingresses?timeout=30s": service "ingress-nginx-controller-admission" not found
		* 解决方案： kubectl delete -A ValidatingWebhookConfiguration ingress-nginx-admission
		* https://stackoverflow.com/questions/61365202/nginx-ingress-service-ingress-nginx-controller-admission-not-found