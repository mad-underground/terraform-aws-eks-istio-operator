variable "enabled" {
  type        = bool
  default     = true
  description = "Variable indicating whether deployment is enabled."
}

variable "helm_chart_name" {
  type        = string
  default     = "istio-operator"
  description = "Istio operator Helm chart name to be installed"
}

variable "helm_chart" {
  type        = string
  default     = "/manifests/charts/istio-operator"
  description = "Istio operator repository name."
}

variable "operator_version" {
  type        = string
  default     = "1.10.3"
  description = "Istio operator version."
}

variable "create_namespace" {
  type        = bool
  default     = true
  description = "Whether to create Kubernetes namespace with name defined by `namespace`."
}

variable "namespace" {
  type        = string
  default     = "istio-operator"
  description = "Kubernetes namespace to deploy Istio operator Helm chart."
}

variable "watched_namespaces" {
  type        = string
  default     = "istio-system"
  description = "Kubernetes namespace to Istio operator to watch."
}

variable "mod_dependency" {
  default     = null
  description = "Dependence variable binds all AWS resources allocated by this module, dependent modules reference this variable."
}

variable "settings" {
  default     = {}
  description = "Additional settings which will be passed to the Helm chart values."
}