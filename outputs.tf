output "compute_firewalls_id" {
  description = "Map of id values across all compute_firewalls, keyed the same as var.compute_firewalls except keys with no id are omitted"
  value       = { for k, v in google_compute_firewall.compute_firewalls : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_firewalls_allow" {
  description = "Map of allow values across all compute_firewalls, keyed the same as var.compute_firewalls except keys with no allow are omitted"
  value       = { for k, v in google_compute_firewall.compute_firewalls : k => v.allow if v.allow != null && length(v.allow) > 0 }
}
output "compute_firewalls_creation_timestamp" {
  description = "Map of creation_timestamp values across all compute_firewalls, keyed the same as var.compute_firewalls except keys with no creation_timestamp are omitted"
  value       = { for k, v in google_compute_firewall.compute_firewalls : k => v.creation_timestamp if v.creation_timestamp != null && length(v.creation_timestamp) > 0 }
}
output "compute_firewalls_deletion_policy" {
  description = "Map of deletion_policy values across all compute_firewalls, keyed the same as var.compute_firewalls except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_firewall.compute_firewalls : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_firewalls_deny" {
  description = "Map of deny values across all compute_firewalls, keyed the same as var.compute_firewalls except keys with no deny are omitted"
  value       = { for k, v in google_compute_firewall.compute_firewalls : k => v.deny if v.deny != null && length(v.deny) > 0 }
}
output "compute_firewalls_description" {
  description = "Map of description values across all compute_firewalls, keyed the same as var.compute_firewalls except keys with no description are omitted"
  value       = { for k, v in google_compute_firewall.compute_firewalls : k => v.description if v.description != null && length(v.description) > 0 }
}
output "compute_firewalls_destination_ranges" {
  description = "Map of destination_ranges values across all compute_firewalls, keyed the same as var.compute_firewalls except keys with no destination_ranges are omitted"
  value       = { for k, v in google_compute_firewall.compute_firewalls : k => v.destination_ranges if v.destination_ranges != null && length(v.destination_ranges) > 0 }
}
output "compute_firewalls_direction" {
  description = "Map of direction values across all compute_firewalls, keyed the same as var.compute_firewalls except keys with no direction are omitted"
  value       = { for k, v in google_compute_firewall.compute_firewalls : k => v.direction if v.direction != null && length(v.direction) > 0 }
}
output "compute_firewalls_disabled" {
  description = "Map of disabled values across all compute_firewalls, keyed the same as var.compute_firewalls except keys with no disabled are omitted"
  value       = { for k, v in google_compute_firewall.compute_firewalls : k => v.disabled if v.disabled != null }
}
output "compute_firewalls_enable_logging" {
  description = "Map of enable_logging values across all compute_firewalls, keyed the same as var.compute_firewalls except keys with no enable_logging are omitted"
  value       = { for k, v in google_compute_firewall.compute_firewalls : k => v.enable_logging if v.enable_logging != null }
}
output "compute_firewalls_log_config" {
  description = "Map of log_config values across all compute_firewalls, keyed the same as var.compute_firewalls except keys with no log_config are omitted"
  value       = { for k, v in google_compute_firewall.compute_firewalls : k => one(v.log_config) if v.log_config != null && length(v.log_config) > 0 }
}
output "compute_firewalls_name" {
  description = "Map of name values across all compute_firewalls, keyed the same as var.compute_firewalls except keys with no name are omitted"
  value       = { for k, v in google_compute_firewall.compute_firewalls : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_firewalls_network" {
  description = "Map of network values across all compute_firewalls, keyed the same as var.compute_firewalls except keys with no network are omitted"
  value       = { for k, v in google_compute_firewall.compute_firewalls : k => v.network if v.network != null && length(v.network) > 0 }
}
output "compute_firewalls_params" {
  description = "Map of params values across all compute_firewalls, keyed the same as var.compute_firewalls except keys with no params are omitted"
  value       = { for k, v in google_compute_firewall.compute_firewalls : k => one(v.params) if v.params != null && length(v.params) > 0 }
}
output "compute_firewalls_priority" {
  description = "Map of priority values across all compute_firewalls, keyed the same as var.compute_firewalls except keys with no priority are omitted"
  value       = { for k, v in google_compute_firewall.compute_firewalls : k => v.priority if v.priority != null }
}
output "compute_firewalls_project" {
  description = "Map of project values across all compute_firewalls, keyed the same as var.compute_firewalls except keys with no project are omitted"
  value       = { for k, v in google_compute_firewall.compute_firewalls : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_firewalls_self_link" {
  description = "Map of self_link values across all compute_firewalls, keyed the same as var.compute_firewalls except keys with no self_link are omitted"
  value       = { for k, v in google_compute_firewall.compute_firewalls : k => v.self_link if v.self_link != null && length(v.self_link) > 0 }
}
output "compute_firewalls_source_ranges" {
  description = "Map of source_ranges values across all compute_firewalls, keyed the same as var.compute_firewalls except keys with no source_ranges are omitted"
  value       = { for k, v in google_compute_firewall.compute_firewalls : k => v.source_ranges if v.source_ranges != null && length(v.source_ranges) > 0 }
}
output "compute_firewalls_source_service_accounts" {
  description = "Map of source_service_accounts values across all compute_firewalls, keyed the same as var.compute_firewalls except keys with no source_service_accounts are omitted"
  value       = { for k, v in google_compute_firewall.compute_firewalls : k => v.source_service_accounts if v.source_service_accounts != null && length(v.source_service_accounts) > 0 }
}
output "compute_firewalls_source_tags" {
  description = "Map of source_tags values across all compute_firewalls, keyed the same as var.compute_firewalls except keys with no source_tags are omitted"
  value       = { for k, v in google_compute_firewall.compute_firewalls : k => v.source_tags if v.source_tags != null && length(v.source_tags) > 0 }
}
output "compute_firewalls_target_service_accounts" {
  description = "Map of target_service_accounts values across all compute_firewalls, keyed the same as var.compute_firewalls except keys with no target_service_accounts are omitted"
  value       = { for k, v in google_compute_firewall.compute_firewalls : k => v.target_service_accounts if v.target_service_accounts != null && length(v.target_service_accounts) > 0 }
}
output "compute_firewalls_target_tags" {
  description = "Map of target_tags values across all compute_firewalls, keyed the same as var.compute_firewalls except keys with no target_tags are omitted"
  value       = { for k, v in google_compute_firewall.compute_firewalls : k => v.target_tags if v.target_tags != null && length(v.target_tags) > 0 }
}

