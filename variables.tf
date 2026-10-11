variable "auth_server_scopes_lookup" {
  description = <<EOT
Map of auth_server_scopes_lookup, attributes below
Required:
    - auth_server_id
EOT

  type = map(object({
    auth_server_id = string
  }))
}

