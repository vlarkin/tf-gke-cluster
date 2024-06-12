data "flux_install" "main" {
  target_path    = "fluxcd"
  network_policy = false
  components     = ["source-controller", "helm-controller", "kustomize-controller"]
  version        = "latest"
}

data "kubectl_file_documents" "apply" {
  content = data.flux_install.main.content
}

data "flux_sync" "main" {
  target_path = "fluxcd"
  url         = "https://github.com/vlarkin/chatbot"
  branch      = "master"
}

data "kubectl_file_documents" "sync" {
  content = data.flux_sync.main.content
}
