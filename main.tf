data "cloudflare_rulesets" "rulesets_lookup" {
  for_each = var.rulesets_lookup

  account_id = each.value.account_id
  max_items  = each.value.max_items
  zone_id    = each.value.zone_id
}

