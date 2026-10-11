resource "google_compute_firewall" "compute_firewalls" {
  for_each = var.compute_firewalls

  name                    = each.value.name
  network                 = each.value.network
  deletion_policy         = each.value.deletion_policy
  description             = each.value.description
  destination_ranges      = each.value.destination_ranges
  direction               = each.value.direction
  disabled                = each.value.disabled
  enable_logging          = each.value.enable_logging
  priority                = each.value.priority
  project                 = each.value.project
  source_ranges           = each.value.source_ranges
  source_service_accounts = each.value.source_service_accounts
  source_tags             = each.value.source_tags
  target_service_accounts = each.value.target_service_accounts
  target_tags             = each.value.target_tags

  dynamic "allow" {
    for_each = each.value.allow != null ? each.value.allow : []
    content {
      ports    = allow.value.ports
      protocol = allow.value.protocol
    }
  }

  dynamic "deny" {
    for_each = each.value.deny != null ? each.value.deny : []
    content {
      ports    = deny.value.ports
      protocol = deny.value.protocol
    }
  }

  dynamic "log_config" {
    for_each = each.value.log_config != null ? [each.value.log_config] : []
    content {
      metadata = log_config.value.metadata
    }
  }

  dynamic "params" {
    for_each = each.value.params != null ? [each.value.params] : []
    content {
      resource_manager_tags = params.value.resource_manager_tags
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

