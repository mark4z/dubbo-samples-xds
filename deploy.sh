for i in {0..0} ; do
    cat ./k8s/Deployment.yml | sed "s/APP-NAME/privoder-$i/g" | kubectl apply -f -
done

