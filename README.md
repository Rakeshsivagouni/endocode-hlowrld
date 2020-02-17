# Hlowrld

## Requirements

Tested with go version `go1.13.7 linux/amd64`

## License

See `LICENSE`

## Copyright

(c) Johannes Amorosa 2020

## Usage

``` bash
hlowrld --help

  -debug
        Turn debug on/off
  -ip string
        IP address to bind (default "0.0.0.0")
  -port int
        port number to listen on (default 25478)
```

## Endpoints

`/ --> Hello Dainty Amalia 200`

`/healthz --> 200`


## Deploying to Kubernetes

Prerequesites: 

Docker : v19.03.6
Helm: v2.16.1
minikube: v1.7.1


**This helm chart is tested against a minikube cluster**

    *. Cloned the repository
    *. Added a Dockerfile 
    *. Created a helm chart to deploy the application to minikube k8s cluster
            
