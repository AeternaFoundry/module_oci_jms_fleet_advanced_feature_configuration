variable "jms_fleet_advanced_feature_configurations" {
  description = <<EOT
Map of jms_fleet_advanced_feature_configurations, attributes below
Required:
    - fleet_id
Optional:
    - analytic_bucket_name
    - analytic_namespace
    - advanced_usage_tracking (block):
        - is_enabled (optional)
    - crypto_event_analysis (block):
        - is_enabled (optional)
        - summarized_events_log (optional, block):
            - log_group_id (required)
            - log_id (required)
    - java_migration_analysis (block):
        - is_enabled (optional)
    - jfr_recording (block):
        - is_enabled (optional)
    - lcm (block):
        - is_enabled (optional)
        - post_installation_actions (optional, block):
            - add_logging_handler (optional)
            - disabled_tls_versions (optional)
            - global_logging_level (optional)
            - minimum_key_size_settings (optional, block):
                - certpath (optional, block):
                    - key_size (optional)
                    - name (optional)
                - jar (optional, block):
                    - key_size (optional)
                    - name (optional)
                - tls (optional, block):
                    - key_size (optional)
                    - name (optional)
            - proxies (optional, block):
                - ftp_proxy_host (optional)
                - ftp_proxy_port (optional)
                - http_proxy_host (optional)
                - http_proxy_port (optional)
                - https_proxy_host (optional)
                - https_proxy_port (optional)
                - socks_proxy_host (optional)
                - socks_proxy_port (optional)
                - use_system_proxies (optional)
            - should_replace_certificates_operating_system (optional)
    - performance_tuning_analysis (block):
        - is_enabled (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    fleet_id             = string
    analytic_bucket_name = optional(string)
    analytic_namespace   = optional(string)
    advanced_usage_tracking = optional(object({
      is_enabled = optional(bool)
    }))
    crypto_event_analysis = optional(object({
      is_enabled = optional(bool)
      summarized_events_log = optional(object({
        log_group_id = string
        log_id       = string
      }))
    }))
    java_migration_analysis = optional(object({
      is_enabled = optional(bool)
    }))
    jfr_recording = optional(object({
      is_enabled = optional(bool)
    }))
    lcm = optional(object({
      is_enabled = optional(bool)
      post_installation_actions = optional(object({
        add_logging_handler   = optional(bool)
        disabled_tls_versions = optional(list(string))
        global_logging_level  = optional(string)
        minimum_key_size_settings = optional(object({
          certpath = optional(list(object({
            key_size = optional(number)
            name     = optional(string)
          })))
          jar = optional(list(object({
            key_size = optional(number)
            name     = optional(string)
          })))
          tls = optional(list(object({
            key_size = optional(number)
            name     = optional(string)
          })))
        }))
        proxies = optional(object({
          ftp_proxy_host     = optional(string)
          ftp_proxy_port     = optional(number)
          http_proxy_host    = optional(string)
          http_proxy_port    = optional(number)
          https_proxy_host   = optional(string)
          https_proxy_port   = optional(number)
          socks_proxy_host   = optional(string)
          socks_proxy_port   = optional(number)
          use_system_proxies = optional(bool)
        }))
        should_replace_certificates_operating_system = optional(bool)
      }))
    }))
    performance_tuning_analysis = optional(object({
      is_enabled = optional(bool)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

