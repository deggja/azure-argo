resource "helm_release" "argocd" {
  name  = "argocd"

  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  namespace        = "argocd"
  version          = "5.5.5"
  create_namespace = true

  values = [
    file("argocd/application.yaml")
  ]
}