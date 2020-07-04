output "cluster_id" {
  value = local.cluster_id
}

output "resource_group" {
  value = azurerm_resource_group.main.name
}

output "bootstrap_public_ip" {
  value = module.bootstrap.bootstrap_public_ip
}

output "console_url" {
  value = "https://console-openshift-console.apps.${var.cluster_name}.${var.base_domain}"
}
