resource "azuredevops_serviceendpoint_dockerregistry" "serviceendpoint_dockerregistries" {
  for_each = var.serviceendpoint_dockerregistries

  project_id            = each.value.project_id
  service_endpoint_name = each.value.service_endpoint_name
  description           = each.value.description
  docker_email          = each.value.docker_email
  docker_password       = each.value.docker_password
  docker_registry       = each.value.docker_registry
  docker_username       = each.value.docker_username
  registry_type         = each.value.registry_type

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

