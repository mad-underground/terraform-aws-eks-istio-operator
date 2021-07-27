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

<!--- END_TF_DOCS --->

## Authors

Module managed by [DNX Solutions](https://github.com/DNXLabs).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/DNXLabs/terraform-aws-eks-istio-operator/blob/master/LICENSE) for full details.
