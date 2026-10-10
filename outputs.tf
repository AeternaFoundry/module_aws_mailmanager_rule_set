output "mailmanager_rule_sets_id" {
  description = "Map of id values across all mailmanager_rule_sets, keyed the same as var.mailmanager_rule_sets"
  value       = { for k, v in aws_mailmanager_rule_set.mailmanager_rule_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mailmanager_rule_sets_arn" {
  description = "Map of arn values across all mailmanager_rule_sets, keyed the same as var.mailmanager_rule_sets"
  value       = { for k, v in aws_mailmanager_rule_set.mailmanager_rule_sets : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "mailmanager_rule_sets_created_date" {
  description = "Map of created_date values across all mailmanager_rule_sets, keyed the same as var.mailmanager_rule_sets"
  value       = { for k, v in aws_mailmanager_rule_set.mailmanager_rule_sets : k => v.created_date if v.created_date != null && length(v.created_date) > 0 }
}
output "mailmanager_rule_sets_last_modification_date" {
  description = "Map of last_modification_date values across all mailmanager_rule_sets, keyed the same as var.mailmanager_rule_sets"
  value       = { for k, v in aws_mailmanager_rule_set.mailmanager_rule_sets : k => v.last_modification_date if v.last_modification_date != null && length(v.last_modification_date) > 0 }
}
output "mailmanager_rule_sets_name" {
  description = "Map of name values across all mailmanager_rule_sets, keyed the same as var.mailmanager_rule_sets"
  value       = { for k, v in aws_mailmanager_rule_set.mailmanager_rule_sets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "mailmanager_rule_sets_region" {
  description = "Map of region values across all mailmanager_rule_sets, keyed the same as var.mailmanager_rule_sets"
  value       = { for k, v in aws_mailmanager_rule_set.mailmanager_rule_sets : k => v.region if v.region != null && length(v.region) > 0 }
}
output "mailmanager_rule_sets_rule" {
  description = "Map of rule values across all mailmanager_rule_sets, keyed the same as var.mailmanager_rule_sets"
  value       = { for k, v in aws_mailmanager_rule_set.mailmanager_rule_sets : k => v.rule if v.rule != null && length(v.rule) > 0 }
}
output "mailmanager_rule_sets_tags" {
  description = "Map of tags values across all mailmanager_rule_sets, keyed the same as var.mailmanager_rule_sets"
  value       = { for k, v in aws_mailmanager_rule_set.mailmanager_rule_sets : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "mailmanager_rule_sets_tags_all" {
  description = "Map of tags_all values across all mailmanager_rule_sets, keyed the same as var.mailmanager_rule_sets"
  value       = { for k, v in aws_mailmanager_rule_set.mailmanager_rule_sets : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

