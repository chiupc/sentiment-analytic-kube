#Prepare configmap
$configMapName = "sentiment-analytic-py-config"
$res = kubectl get configmap $configMapName
Write-Output $res[1].GetType().FullName
if($res[1].Contains($configMapName)){
    kubectl delete configmap $configMapName
}

$configMapName = "sentiment-analytic-go-config"
$res = kubectl get configmap $configMapName
Write-Output $res[1].GetType().FullName
if($res[1].Contains($configMapName)){
    kubectl delete configmap $configMapName
}

$configMapName = "sentiment-collector-config"
$res = kubectl get configmap $configMapName
Write-Output $res[1].GetType().FullName
if($res[1].Contains($configMapName)){
    kubectl delete configmap $configMapName
}
kubectl create configmap sentiment-analytic-py-config --from-file="D:\SharkDetector\src\SentimentAnalyticPy\.env"
kubectl create configmap sentiment-analytic-go-config --from-file="D:\SharkDetector\src\SentimentAnalytic\.env"
kubectl create configmap sentiment-collector-config --from-file="D:\SharkDetector\src\yf-conversations-fiberv2\.env"




