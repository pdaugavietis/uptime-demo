# Create a PagerDuty team
resource "pagerduty_team" "engineering" {
  name        = "Engineering"
  description = "All engineering"
}

# Create a user
resource "pagerduty_user" "earline" {
  name  = "Earline Greenholt"
  email = "125.greenholt.earline@graham.name"
}

# Create a team membership
resource "pagerduty_team_membership" "earline_engineering" {
  user_id = pagerduty_user.earline.id
  team_id = pagerduty_team.engineering.id
}

resource "pagerduty_user_contact_method" "email" {
  user_id = pagerduty_user.earline.id
  type    = "email_contact_method"
  address = "foo@bar.com"
  label   = "Work"
}

resource "pagerduty_user_contact_method" "phone" {
  user_id      = pagerduty_user.earline.id
  type         = "phone_contact_method"
  country_code = "+1"
  address      = "2025550199"
  label        = "Work"
}

resource "pagerduty_user_contact_method" "sms" {
  user_id      = pagerduty_user.earline.id
  type         = "sms_contact_method"
  country_code = "+1"
  address      = "2025550199"
  label        = "Work"
}