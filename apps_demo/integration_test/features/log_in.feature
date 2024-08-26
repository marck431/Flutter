Feature: Test LoginPage

@SuccessLogin
Scenario: Log in success
    Given the user enter the username 'admin'
    And the user enter the password 'admin'
    When the user taps the login button
    Then the user will see the form page



    