output "bootstrap_ignition" {
  value = data.ignition_config.bootstrap_redirect.rendered
}

output "master_ignition" {
  value = data.ignition_config.master_redirect.rendered
}

output "kubeadmin-password" {
  depends_on = [null_resource.generate_ignition]
  value = file("${local.installer_workspace}/auth/kubeadmin-password")
}