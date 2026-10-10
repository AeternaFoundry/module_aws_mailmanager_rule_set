variable "mailmanager_rule_sets" {
  description = <<EOT
Map of mailmanager_rule_sets, attributes below
Required:
    - name
Optional:
    - region
    - tags
    - rule (block):
        - action (optional, block):
            - add_header (optional, block):
                - header_name (required)
                - header_value (required)
            - archive (optional, block):
                - action_failure_policy (optional)
                - target_archive (required)
            - bounce (optional, block):
                - action_failure_policy (optional)
                - diagnostic_message (required)
                - message (optional)
                - role_arn (required)
                - sender (required)
                - smtp_reply_code (required)
                - status_code (required)
            - deliver_to_mailbox (optional, block):
                - action_failure_policy (optional)
                - mailbox_arn (required)
                - role_arn (required)
            - deliver_to_q_business (optional, block):
                - action_failure_policy (optional)
                - application_id (required)
                - index_id (required)
                - role_arn (required)
            - drop (optional, block):
            - invoke_lambda (optional, block):
                - action_failure_policy (optional)
                - function_arn (required)
                - invocation_type (required)
                - retry_time_minutes (optional)
                - role_arn (required)
            - publish_to_sns (optional, block):
                - action_failure_policy (optional)
                - encoding (optional)
                - payload_type (optional)
                - role_arn (required)
                - topic_arn (required)
            - relay (optional, block):
                - action_failure_policy (optional)
                - mail_from (optional)
                - relay (required)
            - replace_recipient (optional, block):
                - replace_with (optional)
            - send (optional, block):
                - action_failure_policy (optional)
                - role_arn (required)
            - write_to_s3 (optional, block):
                - action_failure_policy (optional)
                - role_arn (required)
                - s3_bucket (required)
                - s3_prefix (optional)
                - s3_sse_kms_key_id (optional)
        - condition (optional, block):
            - boolean_expression (optional, block):
                - evaluate (optional, block):
                    - analysis (optional, block):
                        - analyzer (required)
                        - result_field (required)
                    - attribute (optional)
                    - is_in_address_list (optional, block):
                        - address_lists (required)
                        - attribute (required)
                - operator (required)
            - dmarc_expression (optional, block):
                - operator (required)
                - values (required)
            - ip_expression (optional, block):
                - evaluate (optional, block):
                    - attribute (required)
                - operator (required)
                - values (required)
            - number_expression (optional, block):
                - evaluate (optional, block):
                    - attribute (required)
                - operator (required)
                - value (required)
            - string_expression (optional, block):
                - evaluate (optional, block):
                    - analysis (optional, block):
                        - analyzer (required)
                        - result_field (required)
                    - attribute (optional)
                    - client_certificate_attribute (optional)
                    - mime_header_attribute (optional)
                - operator (required)
                - values (required)
            - verdict_expression (optional, block):
                - evaluate (optional, block):
                    - analysis (optional, block):
                        - analyzer (required)
                        - result_field (required)
                    - attribute (optional)
                - operator (required)
                - values (required)
        - name (optional)
        - unless (optional, block):
            - boolean_expression (optional, block):
                - evaluate (optional, block):
                    - analysis (optional, block):
                        - analyzer (required)
                        - result_field (required)
                    - attribute (optional)
                    - is_in_address_list (optional, block):
                        - address_lists (required)
                        - attribute (required)
                - operator (required)
            - dmarc_expression (optional, block):
                - operator (required)
                - values (required)
            - ip_expression (optional, block):
                - evaluate (optional, block):
                    - attribute (required)
                - operator (required)
                - values (required)
            - number_expression (optional, block):
                - evaluate (optional, block):
                    - attribute (required)
                - operator (required)
                - value (required)
            - string_expression (optional, block):
                - evaluate (optional, block):
                    - analysis (optional, block):
                        - analyzer (required)
                        - result_field (required)
                    - attribute (optional)
                    - client_certificate_attribute (optional)
                    - mime_header_attribute (optional)
                - operator (required)
                - values (required)
            - verdict_expression (optional, block):
                - evaluate (optional, block):
                    - analysis (optional, block):
                        - analyzer (required)
                        - result_field (required)
                    - attribute (optional)
                - operator (required)
                - values (required)
EOT

  type = map(object({
    name   = string
    region = optional(string)
    tags   = optional(map(string))
    rule = optional(list(object({
      action = optional(list(object({
        add_header = optional(list(object({
          header_name  = string
          header_value = string
        })))
        archive = optional(list(object({
          action_failure_policy = optional(string)
          target_archive        = string
        })))
        bounce = optional(list(object({
          action_failure_policy = optional(string)
          diagnostic_message    = string
          message               = optional(string)
          role_arn              = string
          sender                = string
          smtp_reply_code       = string
          status_code           = string
        })))
        deliver_to_mailbox = optional(list(object({
          action_failure_policy = optional(string)
          mailbox_arn           = string
          role_arn              = string
        })))
        deliver_to_q_business = optional(list(object({
          action_failure_policy = optional(string)
          application_id        = string
          index_id              = string
          role_arn              = string
        })))
        drop = optional(list(object({
        })))
        invoke_lambda = optional(list(object({
          action_failure_policy = optional(string)
          function_arn          = string
          invocation_type       = string
          retry_time_minutes    = optional(number)
          role_arn              = string
        })))
        publish_to_sns = optional(list(object({
          action_failure_policy = optional(string)
          encoding              = optional(string)
          payload_type          = optional(string)
          role_arn              = string
          topic_arn             = string
        })))
        relay = optional(list(object({
          action_failure_policy = optional(string)
          mail_from             = optional(string)
          relay                 = string
        })))
        replace_recipient = optional(list(object({
          replace_with = optional(list(string))
        })))
        send = optional(list(object({
          action_failure_policy = optional(string)
          role_arn              = string
        })))
        write_to_s3 = optional(list(object({
          action_failure_policy = optional(string)
          role_arn              = string
          s3_bucket             = string
          s3_prefix             = optional(string)
          s3_sse_kms_key_id     = optional(string)
        })))
      })))
      condition = optional(list(object({
        boolean_expression = optional(list(object({
          evaluate = optional(list(object({
            analysis = optional(list(object({
              analyzer     = string
              result_field = string
            })))
            attribute = optional(string)
            is_in_address_list = optional(list(object({
              address_lists = list(string)
              attribute     = string
            })))
          })))
          operator = string
        })))
        dmarc_expression = optional(list(object({
          operator = string
          values   = list(string)
        })))
        ip_expression = optional(list(object({
          evaluate = optional(list(object({
            attribute = string
          })))
          operator = string
          values   = list(string)
        })))
        number_expression = optional(list(object({
          evaluate = optional(list(object({
            attribute = string
          })))
          operator = string
          value    = number
        })))
        string_expression = optional(list(object({
          evaluate = optional(list(object({
            analysis = optional(list(object({
              analyzer     = string
              result_field = string
            })))
            attribute                    = optional(string)
            client_certificate_attribute = optional(string)
            mime_header_attribute        = optional(string)
          })))
          operator = string
          values   = list(string)
        })))
        verdict_expression = optional(list(object({
          evaluate = optional(list(object({
            analysis = optional(list(object({
              analyzer     = string
              result_field = string
            })))
            attribute = optional(string)
          })))
          operator = string
          values   = list(string)
        })))
      })))
      name = optional(string)
      unless = optional(list(object({
        boolean_expression = optional(list(object({
          evaluate = optional(list(object({
            analysis = optional(list(object({
              analyzer     = string
              result_field = string
            })))
            attribute = optional(string)
            is_in_address_list = optional(list(object({
              address_lists = list(string)
              attribute     = string
            })))
          })))
          operator = string
        })))
        dmarc_expression = optional(list(object({
          operator = string
          values   = list(string)
        })))
        ip_expression = optional(list(object({
          evaluate = optional(list(object({
            attribute = string
          })))
          operator = string
          values   = list(string)
        })))
        number_expression = optional(list(object({
          evaluate = optional(list(object({
            attribute = string
          })))
          operator = string
          value    = number
        })))
        string_expression = optional(list(object({
          evaluate = optional(list(object({
            analysis = optional(list(object({
              analyzer     = string
              result_field = string
            })))
            attribute                    = optional(string)
            client_certificate_attribute = optional(string)
            mime_header_attribute        = optional(string)
          })))
          operator = string
          values   = list(string)
        })))
        verdict_expression = optional(list(object({
          evaluate = optional(list(object({
            analysis = optional(list(object({
              analyzer     = string
              result_field = string
            })))
            attribute = optional(string)
          })))
          operator = string
          values   = list(string)
        })))
      })))
    })))
  }))
}

