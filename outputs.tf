output "auth_server_scopes_lookup_id" {
  description = "Map of id values across all auth_server_scopes_lookup, keyed the same as var.auth_server_scopes_lookup except keys with no id are omitted"
  value       = { for k, v in data.okta_auth_server_scopes.auth_server_scopes_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "auth_server_scopes_lookup_auth_server_id" {
  description = "Map of auth_server_id values across all auth_server_scopes_lookup, keyed the same as var.auth_server_scopes_lookup except keys with no auth_server_id are omitted"
  value       = { for k, v in data.okta_auth_server_scopes.auth_server_scopes_lookup : k => v.auth_server_id if v.auth_server_id != null && length(v.auth_server_id) > 0 }
}
output "auth_server_scopes_lookup_scopes" {
  description = "Map of scopes values across all auth_server_scopes_lookup, keyed the same as var.auth_server_scopes_lookup except keys with no scopes are omitted"
  value       = { for k, v in data.okta_auth_server_scopes.auth_server_scopes_lookup : k => v.scopes if v.scopes != null && length(v.scopes) > 0 }
}

