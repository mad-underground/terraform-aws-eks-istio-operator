resource "helm_release" "istio" {
  depends_on = [var.mod_dependency, kubernetes_namespace.istio]
  count      = var.enabled ? 1 : 0
  name       = var.helm_chart_name
  chart      = "${path.module}/istio-${var.operator_version}${var.helm_chart}"
  namespace  = var.namespace

  set {
    name  = "operatorNamespace"
    value = var.namespace
  }

  set {
    name  = "watchedNamespaces"
    value = var.watched_namespaces
  }

  values = [
    yamlencode(var.settings)
  ]

}