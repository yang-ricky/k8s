* 如何安装一个Ingress?
  * kubectl apply -f deploy.yaml
  * kubectl apply -f default-backend.yaml
  * 创建两个service
    * kubectl apply -f demo1.yaml
    * kubectl apply -f demo2.yaml
  * 创建ingress规则
    * kubectl apply -f demo-ingress.yaml
  * 验证命令
    * kubectl get ingress -o wide
    * kubectl get pods -n ingress-nginx
    * kubectl get svc -n ingress-nginx
  * 踩坑记
    * 目前遇到了node1的pod不能ping通Node3上的pod, 所以导致了大量的重复试错工作，一度认为ingress部署是失败的