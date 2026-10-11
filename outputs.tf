output "group_saml_links_lookup_id" {
  description = "Map of id values across all group_saml_links_lookup, keyed the same as var.group_saml_links_lookup except keys with no id are omitted"
  value       = { for k, v in data.gitlab_group_saml_links.group_saml_links_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "group_saml_links_lookup_group" {
  description = "Map of group values across all group_saml_links_lookup, keyed the same as var.group_saml_links_lookup except keys with no group are omitted"
  value       = { for k, v in data.gitlab_group_saml_links.group_saml_links_lookup : k => v.group if v.group != null && length(v.group) > 0 }
}
output "group_saml_links_lookup_saml_links" {
  description = "Map of saml_links values across all group_saml_links_lookup, keyed the same as var.group_saml_links_lookup except keys with no saml_links are omitted"
  value       = { for k, v in data.gitlab_group_saml_links.group_saml_links_lookup : k => v.saml_links if v.saml_links != null && length(v.saml_links) > 0 }
}

