# Introduction
Socksprox is a small k8s deployment which allows you to spin up a dynamic set of nodes with a loadbalanced socks proxies. 

# How to use
1. Create a kubernetes cluster. 
2. Edit the `k8s/credentials.yml` with your own username/password to use for auth
3. `cd k8s && kubectl apply -f .`
4. Wait for the loadbalancer to spin up. In burp, change the Network settings to use a SOCKS5 proxy with the loadbalancer IP and port 1080.  

