## Bootstrapping FluxCD with Terraform

```
cd fluxcd
terraform init
terraform apply
```

This FluxCD configuration also deploys a project from [this repository](https://github.com/vlarkin/chatbot).
FluxCD automatically tracks changes in the project's master branch.
