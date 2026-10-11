data "gitlab_group_saml_links" "group_saml_links_lookup" {
  for_each = var.group_saml_links_lookup

  group = each.value.group
}

