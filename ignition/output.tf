output "bootstrap_ignition" {
  value = data.ignition_config.bootstrap_redirect.rendered
}

output "master_ignition" {
  value = data.ignition_config.master_redirect.rendered
}

output "kubeadmin-password" {
  value = azurerm_storage_blob.kubeadmin-password.url
  depends_on = [azurerm_storage_blob.kubeadmin-password]
}