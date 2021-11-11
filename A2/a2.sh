kubectl apply -f ./run-my-nginx.yaml
kubectl get pods -l run=my-nginx -o wide
kubectl get pods -l run=my-nginx -o yaml | findstr podIP #change findstr to grep for linux
kubectl expose deployment/my-nginx

kubectl get svc my-nginx
kubectl describe svc my-nginx
kubectl get ep my-nginx
kubectl scale deployment my-nginx --replicas=0; kubectl scale deployment my-nginx --replicas=2;
kubectl get pods -l run=my-nginx -o wide
kubectl exec my-nginx-5b56ccd65f-4dkqf -- printenv | findstr SERVICE #change findstr to grep for linux