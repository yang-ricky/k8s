# k8s
# rancher.yaml部署步骤
  * 在rancher上面获得文件
  * 在cattle-cluster-agent加上 replicas: 1 （和selector平级）
  * 在cattle-cluster-agent加上 nodeName: yang (和volumns平级)