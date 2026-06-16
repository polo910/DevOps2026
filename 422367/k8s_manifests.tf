resource "kubernetes_deployment" "app" {
  depends_on = [azurerm_kubernetes_cluster.aks]

  metadata {
    name = "my-app"
    labels = {
      app = "web"
    }
  }

  spec {
    replicas = 2

    selector {
      match_labels = {
        app = "web"
      }
    }

    template {
      metadata {
        labels = {
          app = "web"
        }
      }

      spec {
        container {
          image = "placeholder"
          name  = "app-container"

          port {
            container_port = 9898
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "app_service" {
  depends_on = [kubernetes_deployment.app]

  metadata {
    name = "my-app-service"
  }

  spec {
    selector = {
      app = "web"
    }

    port {
      port        = 80
      target_port = 9898
    }

    type = "LoadBalancer"
  }
}
