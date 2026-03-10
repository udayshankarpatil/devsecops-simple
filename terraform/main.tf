terraform {
  required_providers {
    kind = {
      source  = "tehcyx/kind"
      version = "0.6.0"
    }
  }
}

provider "kind" {}

resource "kind_cluster" "default" {
  name           = "devops-lab"
  wait_for_ready = true

  kind_config {
    kind        = "Cluster"
    api_version = "kind.x-k8s.io/v1alpha4"

    node {
      role = "control-plane"

      # Existing mapping for your App
      extra_port_mappings {
        container_port = 30080
        host_port      = 30080
      }

      # New mapping for ArgoCD
      extra_port_mappings {
        container_port = 30443
        host_port      = 30443
      }
    }
  }
}

output "kubeconfig" {
  value     = kind_cluster.default.kubeconfig
  sensitive = true
}
