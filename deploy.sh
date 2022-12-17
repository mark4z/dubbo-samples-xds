for i in {0..2} ; do
    cat ./k8s/Deployment.yml | sed "s/APP-NAME/privoder-$i/g" | sed "s/dubbo-demo/dubbo-demo-b/g" | kubectl delete -f -
    cat ./k8s/Deployment.yml | sed "s/APP-NAME/privoder-$i/g" | sed "s/dubbo-demo/dubbo-demo-b/g" | kubectl apply -f -
done

