resource "pagerduty_service" "service_alpha" {
  name                    = "Service Alpha"
  auto_resolve_timeout    = 14400
  acknowledgement_timeout = 600
  escalation_policy       = pagerduty_escalation_policy.default_team_one.id
  alert_creation          = "create_alerts_and_incidents"
}

resource "pagerduty_service" "service_beta" {
  name                    = "Service Beta"
  auto_resolve_timeout    = 14400
  acknowledgement_timeout = 600
  escalation_policy       = pagerduty_escalation_policy.default_team_two.id
  alert_creation          = "create_alerts_and_incidents"
}

resource "pagerduty_service" "service_gamma" {
  name                    = "Service Gamma"
  auto_resolve_timeout    = 14400
  acknowledgement_timeout = 600
  escalation_policy       = pagerduty_escalation_policy.default_team_three.id
  alert_creation          = "create_alerts_and_incidents"
}
