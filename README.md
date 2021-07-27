# terraform-aws-eks-istio

[![Lint Status](https://github.com/DNXLabs/terraform-aws-eks-istio-operator/workflows/Lint/badge.svg)](https://github.com/DNXLabs/terraform-aws-eks-istio-operator/actions)
[![LICENSE](https://img.shields.io/github/license/DNXLabs/terraform-aws-eks-istio-operator)](https://github.com/DNXLabs/terraform-aws-eks-istio-operator/blob/master/LICENSE)


Terraform module for deploying Kubernetes [istio](https://istio.io/), an open source service mesh that layers transparently onto existing distributed applications. Istio’s powerful features provide a uniform and more efficient way to secure, connect, and monitor services. Istio is the path to load balancing, service-to-service authentication, and monitoring – with few or no service code changes.

## Usage

```bash
module "istio_operator" {
  source = "git::https://github.com/DNXLabs/terraform-aws-eks-istio-operator.git"

  enabled = true
}
```

<!--- BEGIN_TF_DOCS --->

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| aws | >= 3.13, < 4.0 |
| helm | >= 1.0, < 3.0 |
| kubernetes | >= 1.10.0, < 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| helm | >= 1.0, < 3.0 |
| kubernetes | >= 1.10.0, < 3.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| create\_namespace | Whether to create Kubernetes namespace with name defined by `namespace`. | `bool` | `true` | no |
| enabled | Variable indicating whether deployment is enabled. | `bool` | `true` | no |
| helm\_chart | Istio operator repository name. | `string` | `"/manifests/charts/istio-operator"` | no |
| helm\_chart\_name | Istio operator Helm chart name to be installed | `string` | `"istio-operator"` | no |
| mod\_dependency | Dependence variable binds all AWS resources allocated by this module, dependent modules reference this variable. | `any` | `null` | no |
| namespace | Kubernetes namespace to deploy Istio operator Helm chart. | `string` | `"istio-operator"` | no |
| operator\_version | Istio operator version. | `string` | `"1.10.3"` | no |
| settings | Additional settings which will be passed to the Helm chart values. | `map` | `{}` | no |
| watched\_namespaces | Kubernetes namespace to Istio operator to watch. | `string` | `"istio-system"` | no |

## Outputs

No output.

<!--- END_TF_DOCS --->

## Authors

Module managed by [DNX Solutions](https://github.com/DNXLabs).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/DNXLabs/terraform-aws-eks-istio-operator/blob/master/LICENSE) for full details.
