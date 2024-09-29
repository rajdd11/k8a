#!/bin/bash
alias ll='ls -lrth'
alias kc="kubectl "
alias g="kubectl get"
alias pods="kubectl get pods -o wide"

alias dp='f() { kubectl describe pod "$1" | less; unset -f f; }; f'
alias kd='f() { kubectl describe "$1" "$2" | less; unset -f f; }; f'
alias desc="kubectl describe"

alias e='kubectl exec -it'
alias kdry="kubectl --dry-run=client -o yaml"

alias kapply="kubectl apply -f"
alias kdelf="kubectl delete  --grace-period=0 --force"
alias kdel="kubectl delete"

alias krep="kubectl scale --replicas="

#alias currns="kubectl config view --minify | grep namespace"
alias kctx='kubectl config current-context'
alias kchns='kubectl config set-context --current --namespace='
alias kcns='f() { kc config set-context --current --namespace="$1" | unset -f f; }; f'

##### how to enable autocomplete if its not already.

# kubectl api-resources 
#			echo -e "KIND:\t\tVERSION:"; for kind in $(kubectl api-resources | tail -n +2 | awk '{print $1}'); do kubectl explain $kind | awk '/KIND:/ {k=$2} /VERSION:/ {print k "\t\t" $2}'; done
# kubectl explain replicaset

# kc get no 
# kc get ns 
# kc get rs 
# kc get svc 
# kc get pods --all-namespaces
# kc get pods -A



clear

