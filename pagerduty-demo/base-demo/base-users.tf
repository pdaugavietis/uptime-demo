resource "pagerduty_user" "earline" {
  name  = "Earline Greenholt"
  email = "earline@supportteam.net"
}

resource "pagerduty_team_membership" "earline_team_one" {
  user_id = pagerduty_user.earline.id
  team_id = pagerduty_team.team_one.id
}

resource "pagerduty_team_membership" "earline_team_two" {
  user_id = pagerduty_user.earline.id
  team_id = pagerduty_team.team_two.id
}

resource "pagerduty_user" "hjones" {
  name  = "Hugo Jones"
  email = "hjones@supportteam.net"
}

resource "pagerduty_team_membership" "hjones_team_two" {
  user_id = pagerduty_user.hjones.id
  team_id = pagerduty_team.team_two.id
}

resource "pagerduty_user" "rbaker" {
  name  = "Roland Baker"
  email = "rbaker@supportteam.net"
}

resource "pagerduty_team_membership" "rbaker_team_three" {
  user_id = pagerduty_user.rbaker.id
  team_id = pagerduty_team.team_three.id
}