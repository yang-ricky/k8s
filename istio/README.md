* curl -L https://istio.io/downloadIstio | sh -
* cd istio-1.9.3/
* export PATH=$PWD/bin:$PATH
* istioctl install --set profile=demo -y
	* 这一步会在k8s集群上安装ingressgateway, engressgateway, istiod
* 参考网站
	* https://istio.io/latest/zh/docs/setup/getting-started/#download
* 踩坑记
	* Readiness probe failed: Get "http://10.244.0.148:15021/healthz/ready": dial tcp 10.244.0.148:15021: connect: connection refused