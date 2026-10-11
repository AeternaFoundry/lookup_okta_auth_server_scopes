data "okta_auth_server_scopes" "auth_server_scopes_lookup" {
  for_each = var.auth_server_scopes_lookup

  auth_server_id = each.value.auth_server_id
}

