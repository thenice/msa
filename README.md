# MSA
An example of a microservice architecture using Kubernetes and Skaffold. Built with Sinatra, Mongo, and Kafka

# To run:

1. Install Docker Desktop.
https://www.docker.com/products/docker-desktop

2. Update config in Docker Desktop to enable Kubernetes

3. Install Kubectl
`brew install kubectl`

4. Install Skaffold
`brew install skaffold`

5. In the root directory of this project, run `skaffold dev`

This will deploy this application to your locally running Kubernets cluster.

# To stop
Option-c
