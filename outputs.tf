output "jms_fleet_advanced_feature_configurations_id" {
  description = "Map of id values across all jms_fleet_advanced_feature_configurations, keyed the same as var.jms_fleet_advanced_feature_configurations except keys with no id are omitted"
  value       = { for k, v in oci_jms_fleet_advanced_feature_configuration.jms_fleet_advanced_feature_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "jms_fleet_advanced_feature_configurations_advanced_usage_tracking" {
  description = "Map of advanced_usage_tracking values across all jms_fleet_advanced_feature_configurations, keyed the same as var.jms_fleet_advanced_feature_configurations except keys with no advanced_usage_tracking are omitted"
  value       = { for k, v in oci_jms_fleet_advanced_feature_configuration.jms_fleet_advanced_feature_configurations : k => one(v.advanced_usage_tracking) if v.advanced_usage_tracking != null && length(v.advanced_usage_tracking) > 0 }
}
output "jms_fleet_advanced_feature_configurations_analytic_bucket_name" {
  description = "Map of analytic_bucket_name values across all jms_fleet_advanced_feature_configurations, keyed the same as var.jms_fleet_advanced_feature_configurations except keys with no analytic_bucket_name are omitted"
  value       = { for k, v in oci_jms_fleet_advanced_feature_configuration.jms_fleet_advanced_feature_configurations : k => v.analytic_bucket_name if v.analytic_bucket_name != null && length(v.analytic_bucket_name) > 0 }
}
output "jms_fleet_advanced_feature_configurations_analytic_namespace" {
  description = "Map of analytic_namespace values across all jms_fleet_advanced_feature_configurations, keyed the same as var.jms_fleet_advanced_feature_configurations except keys with no analytic_namespace are omitted"
  value       = { for k, v in oci_jms_fleet_advanced_feature_configuration.jms_fleet_advanced_feature_configurations : k => v.analytic_namespace if v.analytic_namespace != null && length(v.analytic_namespace) > 0 }
}
output "jms_fleet_advanced_feature_configurations_crypto_event_analysis" {
  description = "Map of crypto_event_analysis values across all jms_fleet_advanced_feature_configurations, keyed the same as var.jms_fleet_advanced_feature_configurations except keys with no crypto_event_analysis are omitted"
  value       = { for k, v in oci_jms_fleet_advanced_feature_configuration.jms_fleet_advanced_feature_configurations : k => one(v.crypto_event_analysis) if v.crypto_event_analysis != null && length(v.crypto_event_analysis) > 0 }
}
output "jms_fleet_advanced_feature_configurations_fleet_id" {
  description = "Map of fleet_id values across all jms_fleet_advanced_feature_configurations, keyed the same as var.jms_fleet_advanced_feature_configurations except keys with no fleet_id are omitted"
  value       = { for k, v in oci_jms_fleet_advanced_feature_configuration.jms_fleet_advanced_feature_configurations : k => v.fleet_id if v.fleet_id != null && length(v.fleet_id) > 0 }
}
output "jms_fleet_advanced_feature_configurations_java_migration_analysis" {
  description = "Map of java_migration_analysis values across all jms_fleet_advanced_feature_configurations, keyed the same as var.jms_fleet_advanced_feature_configurations except keys with no java_migration_analysis are omitted"
  value       = { for k, v in oci_jms_fleet_advanced_feature_configuration.jms_fleet_advanced_feature_configurations : k => one(v.java_migration_analysis) if v.java_migration_analysis != null && length(v.java_migration_analysis) > 0 }
}
output "jms_fleet_advanced_feature_configurations_jfr_recording" {
  description = "Map of jfr_recording values across all jms_fleet_advanced_feature_configurations, keyed the same as var.jms_fleet_advanced_feature_configurations except keys with no jfr_recording are omitted"
  value       = { for k, v in oci_jms_fleet_advanced_feature_configuration.jms_fleet_advanced_feature_configurations : k => one(v.jfr_recording) if v.jfr_recording != null && length(v.jfr_recording) > 0 }
}
output "jms_fleet_advanced_feature_configurations_lcm" {
  description = "Map of lcm values across all jms_fleet_advanced_feature_configurations, keyed the same as var.jms_fleet_advanced_feature_configurations except keys with no lcm are omitted"
  value       = { for k, v in oci_jms_fleet_advanced_feature_configuration.jms_fleet_advanced_feature_configurations : k => one(v.lcm) if v.lcm != null && length(v.lcm) > 0 }
}
output "jms_fleet_advanced_feature_configurations_performance_tuning_analysis" {
  description = "Map of performance_tuning_analysis values across all jms_fleet_advanced_feature_configurations, keyed the same as var.jms_fleet_advanced_feature_configurations except keys with no performance_tuning_analysis are omitted"
  value       = { for k, v in oci_jms_fleet_advanced_feature_configuration.jms_fleet_advanced_feature_configurations : k => one(v.performance_tuning_analysis) if v.performance_tuning_analysis != null && length(v.performance_tuning_analysis) > 0 }
}
output "jms_fleet_advanced_feature_configurations_time_last_modified" {
  description = "Map of time_last_modified values across all jms_fleet_advanced_feature_configurations, keyed the same as var.jms_fleet_advanced_feature_configurations except keys with no time_last_modified are omitted"
  value       = { for k, v in oci_jms_fleet_advanced_feature_configuration.jms_fleet_advanced_feature_configurations : k => v.time_last_modified if v.time_last_modified != null && length(v.time_last_modified) > 0 }
}

