Feature: Iam
  In order to quickly change git settings
  As a user
  I want to have a clean interface

  Scenario: Find out who I am
    When I run "git iam who"
    Then the output should contain "user.name"

  Scenario: Set current user config
    When I run "git iam tyler"
    Then the output should contain "tyler"

  Scenario: Set user name only
    When I run "git iam user tyleeeee"
    Then the output should contain "tyleeeee"

  Scenario: Set email only
    When I run "git iam email tyler@co.co"
    Then the output should contain "tyler@co.co"

  Scenario: Set current user config, including email
    When I run "git iam newTyler co@co.co"
    Then the output should contain "newTyler"
    Then the output should contain "co@co.co"

  # not a great test
  # largely used to reset git config after tests run
  Scenario: Reset settings
    When I run "git iam reset"
    Then the output should contain "user.name"
