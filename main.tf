resource "oci_jms_fleet_advanced_feature_configuration" "jms_fleet_advanced_feature_configurations" {
  for_each = var.jms_fleet_advanced_feature_configurations

  fleet_id             = each.value.fleet_id
  analytic_bucket_name = each.value.analytic_bucket_name
  analytic_namespace   = each.value.analytic_namespace

  dynamic "advanced_usage_tracking" {
    for_each = each.value.advanced_usage_tracking != null ? [each.value.advanced_usage_tracking] : []
    content {
      is_enabled = advanced_usage_tracking.value.is_enabled
    }
  }

  dynamic "crypto_event_analysis" {
    for_each = each.value.crypto_event_analysis != null ? [each.value.crypto_event_analysis] : []
    content {
      is_enabled = crypto_event_analysis.value.is_enabled
      dynamic "summarized_events_log" {
        for_each = crypto_event_analysis.value.summarized_events_log != null ? [crypto_event_analysis.value.summarized_events_log] : []
        content {
          log_group_id = summarized_events_log.value.log_group_id
          log_id       = summarized_events_log.value.log_id
        }
      }
    }
  }

  dynamic "java_migration_analysis" {
    for_each = each.value.java_migration_analysis != null ? [each.value.java_migration_analysis] : []
    content {
      is_enabled = java_migration_analysis.value.is_enabled
    }
  }

  dynamic "jfr_recording" {
    for_each = each.value.jfr_recording != null ? [each.value.jfr_recording] : []
    content {
      is_enabled = jfr_recording.value.is_enabled
    }
  }

  dynamic "lcm" {
    for_each = each.value.lcm != null ? [each.value.lcm] : []
    content {
      is_enabled = lcm.value.is_enabled
      dynamic "post_installation_actions" {
        for_each = lcm.value.post_installation_actions != null ? [lcm.value.post_installation_actions] : []
        content {
          add_logging_handler   = post_installation_actions.value.add_logging_handler
          disabled_tls_versions = post_installation_actions.value.disabled_tls_versions
          global_logging_level  = post_installation_actions.value.global_logging_level
          dynamic "minimum_key_size_settings" {
            for_each = post_installation_actions.value.minimum_key_size_settings != null ? [post_installation_actions.value.minimum_key_size_settings] : []
            content {
              dynamic "certpath" {
                for_each = minimum_key_size_settings.value.certpath != null ? minimum_key_size_settings.value.certpath : []
                content {
                  key_size = certpath.value.key_size
                  name     = certpath.value.name
                }
              }
              dynamic "jar" {
                for_each = minimum_key_size_settings.value.jar != null ? minimum_key_size_settings.value.jar : []
                content {
                  key_size = jar.value.key_size
                  name     = jar.value.name
                }
              }
              dynamic "tls" {
                for_each = minimum_key_size_settings.value.tls != null ? minimum_key_size_settings.value.tls : []
                content {
                  key_size = tls.value.key_size
                  name     = tls.value.name
                }
              }
            }
          }
          dynamic "proxies" {
            for_each = post_installation_actions.value.proxies != null ? [post_installation_actions.value.proxies] : []
            content {
              ftp_proxy_host     = proxies.value.ftp_proxy_host
              ftp_proxy_port     = proxies.value.ftp_proxy_port
              http_proxy_host    = proxies.value.http_proxy_host
              http_proxy_port    = proxies.value.http_proxy_port
              https_proxy_host   = proxies.value.https_proxy_host
              https_proxy_port   = proxies.value.https_proxy_port
              socks_proxy_host   = proxies.value.socks_proxy_host
              socks_proxy_port   = proxies.value.socks_proxy_port
              use_system_proxies = proxies.value.use_system_proxies
            }
          }
          should_replace_certificates_operating_system = post_installation_actions.value.should_replace_certificates_operating_system
        }
      }
    }
  }

  dynamic "performance_tuning_analysis" {
    for_each = each.value.performance_tuning_analysis != null ? [each.value.performance_tuning_analysis] : []
    content {
      is_enabled = performance_tuning_analysis.value.is_enabled
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

