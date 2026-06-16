output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "acr_login_server" {
  value = azurerm_container_registry.acr.login_server
}

output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.aks.name
}

output "app_public_ip" {
  value       = kubernetes_service.app_service.status[0].load_balancer[0].ingress[0].ip
  description = "Publiczny adres IP aplikacji wystawionej na klastrze"
}
