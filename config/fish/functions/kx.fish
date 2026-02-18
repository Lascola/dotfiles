function kx --wraps kubectl --description 'kubectl get po: current namespace'
    kubectl exec -it (/opt/homebrew/bin/kubectl get pod | fzf -e | awk '{print $1}') bash
end
