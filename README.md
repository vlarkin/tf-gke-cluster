## Provisioning a GKE Cluster with Terraform

First, create a Kubernetes cluster.
Detailed instructions are provided [here](/gke-cluster/README.md).

## Bootstrapping FluxCD with Terraform

Next, install FluxCD into the Kubernetes cluster.
Detailed instructions are provided [here](/fluxcd/README.md).  

---

In this example configuration, FluxCD also deploys a project from [this repository](https://github.com/vlarkin/chatbot). FluxCD automatically tracks changes in the project's master branch.
