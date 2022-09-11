# Configure the PagerDuty provider
terraform {
  required_providers {
    pagerduty = {
      source  = "pagerduty/pagerduty"
      version = "2.2.1"
    }
  }
}

provider "pagerduty" {
  token = "u+D-xdkyHzppNTZziazQ"
}
