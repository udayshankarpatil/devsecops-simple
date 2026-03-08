terraform {
  required_providers {
    kind = {
      source  = "tehcyx/kind"
      version = "0.5.1"
    }
  }
}

provider "kind" {}

resource "kind_cluster" "default" {
  name = "devops-lab"
  node_config {
    role = "control-plane"
    # This port mapping allows you to visit your app at localhost:30080
    extra_port_mappings {
      container_port = 30080
      host_port      = 30080
    }
  }
}
