variable "group_saml_links_lookup" {
  description = <<EOT
Map of group_saml_links_lookup, attributes below
Required:
    - group
EOT

  type = map(object({
    group = string
  }))
}

