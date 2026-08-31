output "app_url" {
  description = "Public URL of the deployed Container App"
  value       = "https://${azurerm_container_app.app.ingress[0].fqdn}"
}
