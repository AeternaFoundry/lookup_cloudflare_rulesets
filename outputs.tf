output "rulesets_lookup_account_id" {
  description = "Map of account_id values across all rulesets_lookup, keyed the same as var.rulesets_lookup except keys with no account_id are omitted"
  value       = { for k, v in data.cloudflare_rulesets.rulesets_lookup : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "rulesets_lookup_max_items" {
  description = "Map of max_items values across all rulesets_lookup, keyed the same as var.rulesets_lookup except keys with no max_items are omitted"
  value       = { for k, v in data.cloudflare_rulesets.rulesets_lookup : k => v.max_items if v.max_items != null }
}
output "rulesets_lookup_result" {
  description = "Map of result values across all rulesets_lookup, keyed the same as var.rulesets_lookup except keys with no result are omitted"
  value       = { for k, v in data.cloudflare_rulesets.rulesets_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}
output "rulesets_lookup_rulesets" {
  description = "Map of rulesets values across all rulesets_lookup, keyed the same as var.rulesets_lookup except keys with no rulesets are omitted"
  value       = { for k, v in data.cloudflare_rulesets.rulesets_lookup : k => v.rulesets if v.rulesets != null && length(v.rulesets) > 0 }
}
output "rulesets_lookup_zone_id" {
  description = "Map of zone_id values across all rulesets_lookup, keyed the same as var.rulesets_lookup except keys with no zone_id are omitted"
  value       = { for k, v in data.cloudflare_rulesets.rulesets_lookup : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

