variable "compute_firewalls" {
  description = <<EOT
Map of compute_firewalls, attributes below
Required:
    - name
    - network
Optional:
    - deletion_policy
    - description
    - destination_ranges
    - direction
    - disabled
    - enable_logging
    - priority
    - project
    - source_ranges
    - source_service_accounts
    - source_tags
    - target_service_accounts
    - target_tags
    - allow (block):
        - ports (optional)
        - protocol (required)
    - deny (block):
        - ports (optional)
        - protocol (required)
    - log_config (block):
        - metadata (required)
    - params (block):
        - resource_manager_tags (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name                    = string
    network                 = string
    deletion_policy         = optional(string)
    description             = optional(string)
    destination_ranges      = optional(set(string))
    direction               = optional(string)
    disabled                = optional(bool)
    enable_logging          = optional(bool)
    priority                = optional(number)
    project                 = optional(string)
    source_ranges           = optional(set(string))
    source_service_accounts = optional(set(string))
    source_tags             = optional(set(string))
    target_service_accounts = optional(set(string))
    target_tags             = optional(set(string))
    allow = optional(list(object({
      ports    = optional(list(string))
      protocol = string
    })))
    deny = optional(list(object({
      ports    = optional(list(string))
      protocol = string
    })))
    log_config = optional(object({
      metadata = string
    }))
    params = optional(object({
      resource_manager_tags = optional(map(string))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.compute_firewalls : (
        v.priority == null || (v.priority >= 0 && v.priority <= 65535)
      )
    ])
    error_message = "must be between 0 and 65535"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

