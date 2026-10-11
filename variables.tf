variable "serviceendpoint_dockerregistries" {
  description = <<EOT
Map of serviceendpoint_dockerregistries, attributes below
Required:
    - project_id
    - service_endpoint_name
Optional:
    - description
    - docker_email
    - docker_password
    - docker_registry
    - docker_username
    - registry_type
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    project_id            = string
    service_endpoint_name = string
    description           = optional(string)
    docker_email          = optional(string)
    docker_password       = optional(string)
    docker_registry       = optional(string)
    docker_username       = optional(string)
    registry_type         = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_dockerregistries : (
        v.registry_type == null || (contains(["DockerHub", "Others"], v.registry_type))
      )
    ])
    error_message = "must be one of: \"DockerHub\", \"Others\""
  }
}

