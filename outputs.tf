output "serviceendpoint_dockerregistries_id" {
  description = "Map of id values across all serviceendpoint_dockerregistries, keyed the same as var.serviceendpoint_dockerregistries"
  value       = { for k, v in azuredevops_serviceendpoint_dockerregistry.serviceendpoint_dockerregistries : k => v.id }
}
output "serviceendpoint_dockerregistries_authorization" {
  description = "Map of authorization values across all serviceendpoint_dockerregistries, keyed the same as var.serviceendpoint_dockerregistries"
  value       = { for k, v in azuredevops_serviceendpoint_dockerregistry.serviceendpoint_dockerregistries : k => v.authorization }
}
output "serviceendpoint_dockerregistries_description" {
  description = "Map of description values across all serviceendpoint_dockerregistries, keyed the same as var.serviceendpoint_dockerregistries"
  value       = { for k, v in azuredevops_serviceendpoint_dockerregistry.serviceendpoint_dockerregistries : k => v.description }
}
output "serviceendpoint_dockerregistries_docker_email" {
  description = "Map of docker_email values across all serviceendpoint_dockerregistries, keyed the same as var.serviceendpoint_dockerregistries"
  value       = { for k, v in azuredevops_serviceendpoint_dockerregistry.serviceendpoint_dockerregistries : k => v.docker_email }
}
output "serviceendpoint_dockerregistries_docker_password" {
  description = "Map of docker_password values across all serviceendpoint_dockerregistries, keyed the same as var.serviceendpoint_dockerregistries"
  value       = { for k, v in azuredevops_serviceendpoint_dockerregistry.serviceendpoint_dockerregistries : k => v.docker_password }
  sensitive   = true
}
output "serviceendpoint_dockerregistries_docker_registry" {
  description = "Map of docker_registry values across all serviceendpoint_dockerregistries, keyed the same as var.serviceendpoint_dockerregistries"
  value       = { for k, v in azuredevops_serviceendpoint_dockerregistry.serviceendpoint_dockerregistries : k => v.docker_registry }
}
output "serviceendpoint_dockerregistries_docker_username" {
  description = "Map of docker_username values across all serviceendpoint_dockerregistries, keyed the same as var.serviceendpoint_dockerregistries"
  value       = { for k, v in azuredevops_serviceendpoint_dockerregistry.serviceendpoint_dockerregistries : k => v.docker_username }
}
output "serviceendpoint_dockerregistries_project_id" {
  description = "Map of project_id values across all serviceendpoint_dockerregistries, keyed the same as var.serviceendpoint_dockerregistries"
  value       = { for k, v in azuredevops_serviceendpoint_dockerregistry.serviceendpoint_dockerregistries : k => v.project_id }
}
output "serviceendpoint_dockerregistries_registry_type" {
  description = "Map of registry_type values across all serviceendpoint_dockerregistries, keyed the same as var.serviceendpoint_dockerregistries"
  value       = { for k, v in azuredevops_serviceendpoint_dockerregistry.serviceendpoint_dockerregistries : k => v.registry_type }
}
output "serviceendpoint_dockerregistries_service_endpoint_name" {
  description = "Map of service_endpoint_name values across all serviceendpoint_dockerregistries, keyed the same as var.serviceendpoint_dockerregistries"
  value       = { for k, v in azuredevops_serviceendpoint_dockerregistry.serviceendpoint_dockerregistries : k => v.service_endpoint_name }
}

