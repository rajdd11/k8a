#!/bin/bash

alias ll='ls -lrth'
alias kc="kubectl "
alias g="kubectl get"
alias pods="kubectl get pods -o wide"

alias dp='f() { kubectl describe pod "$1" | less; unset -f f; }; f'
alias kd='f() { kubectl describe "$1" "$2" | less; unset -f f; }; f'
alias desc="kubectl describe"



alias e='kubectl exec -it /bin/bash '
alias kdry="kubectl --dry-run=client -o yaml"

alias kapply="kubectl apply -f"
alias kdelf="kubectl delete  --grace-period=0 --force"
alias kdel="kubectl delete"

alias krep="kubectl scale --replicas="


#alias currns="kubectl config view --minify | grep namespace"
alias kctx='kubectl config current-context'


#####
alias kcn="kubectl config set-context --current --namespace" ########## check this one 
####


alias kchns='kubectl config set-context --current --namespace='
alias kcns='f() { kubectl config set-context --current --namespace="$1" | unset -f f; }; f'

#setup autocomplete 

source <(kubectl completion bash) # setup autocomplete in bash into the current shell, bash-completion package should be installed first.
echo "source <(kubectl completion bash)" >> ~/.bashrc # add autocomplete permanently to your bash shell.



clear


