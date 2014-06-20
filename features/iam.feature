Feature: Iam
  In order to quickly change git settings
  As a user
  I want to have a clean interface

  Scenario: Find out who I am
    When I run "iam who"
    Then the output should contain "user.name"

  Scenario: Set current user
    When I run "iam tyler"
    Then the output should contain "tyler"

  # Not a very good test
  # Mainly used to reset previous test
  Scenario: Reset settings
    When I run "iam reset"
    Then the output should contain "user.name"
