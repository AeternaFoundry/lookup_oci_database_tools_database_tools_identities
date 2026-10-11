variable "database_tools_database_tools_identities_lookup" {
  description = <<EOT
Map of database_tools_database_tools_identities_lookup, attributes below
Required:
    - compartment_id
Optional:
    - database_tools_connection_id
    - display_name
    - state
    - type
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id               = string
    database_tools_connection_id = optional(string)
    display_name                 = optional(string)
    state                        = optional(string)
    type                         = optional(list(string))
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

