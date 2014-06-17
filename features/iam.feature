Feature: Iam
  In order to quickly change git settings
  As a user
  I want to have a clean interface

  Scenario: Find out who I am
    When I run "iam who"
    Then the output should contain "tgolson"

  Scenario: Set current repository via shorthand command
    When I run "iam onrepo git_iam"
    Then the output should contain "Current repository set to git_iam."

  Scenario: Set current repo using `on`
    When I run "iam on --repo git_iam"
    Then the output should contain "Current repository set to git_iam."

  # Scenario: Set current repo using `on` with short flag
  #   When I run "iam on -r git_iam"
  #   Then the output should contain "git_iam"

  Scenario: Set current branch using `on`
    When I run "iam on --branch new_cool_thing"
    Then the output should contain "Current branch set to new_cool_thing."

  # Scenario: Set current branch using `on` with short flag
  #   When I run "iam on -b git_iam"
  #   Then the output should contain "git_iam"
