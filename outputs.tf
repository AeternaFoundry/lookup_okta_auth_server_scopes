output "auth_server_scopes_lookup_id" {
  description = "Map of id values across all auth_server_scopes_lookup, keyed the same as var.auth_server_scopes_lookup"
  value       = { for k, v in data.okta_auth_server_scopes.auth_server_scopes_lookup : k => v.id }
}
output "auth_server_scopes_lookup_auth_server_id" {
  description = "Map of auth_server_id values across all auth_server_scopes_lookup, keyed the same as var.auth_server_scopes_lookup"
  value       = { for k, v in data.okta_auth_server_scopes.auth_server_scopes_lookup : k => v.auth_server_id }
}
output "auth_server_scopes_lookup_scopes" {
  description = "Map of scopes values across all auth_server_scopes_lookup, keyed the same as var.auth_server_scopes_lookup"
  value       = { for k, v in data.okta_auth_server_scopes.auth_server_scopes_lookup : k => v.scopes }
}

