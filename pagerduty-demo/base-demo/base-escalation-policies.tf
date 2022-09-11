resource "pagerduty_escalation_policy" "default_team_one" {
  name      = "Default Escalation Policy"
  num_loops = 2
  teams = [
    pagerduty_team.team_one.id
  ]

  rule {
    escalation_delay_in_minutes = 10

    target {
      type = "user_reference"
      id   = pagerduty_user.earline.id
    }
    target {
      type = "user_reference"
      id   = pagerduty_user.hjones.id
    }
  }
}

resource "pagerduty_escalation_policy" "default_team_two" {
  name      = "Default Escalation Policy"
  num_loops = 2
  teams = [
    pagerduty_team.team_two.id
  ]

  rule {
    escalation_delay_in_minutes = 10

    target {
      type = "user_reference"
      id   = pagerduty_user.hjones.id
    }
    target {
      type = "user_reference"
      id   = pagerduty_user.earline.id
    }
  }
}

resource "pagerduty_escalation_policy" "default_team_three" {
  name      = "Default Escalation Policy"
  num_loops = 2
  teams = [
    pagerduty_team.team_three.id
  ]

  rule {
    escalation_delay_in_minutes = 10

    target {
      type = "user_reference"
      id   = pagerduty_user.rbaker.id
    }
  }
}
