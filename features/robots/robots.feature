Feature: Control Robot

  Scenario: Viewing application's home page
    When I go to the homepage
    Then I should see the welcome message
    And I enter an x coordinate, y coordinate and orientation
    When I press the Place Robot button
#    Then I should create a robot with the parameters above
#    And I should see the action buttons
#
#  Scenario: Moving the robot
#    When I press the Move button
#    Then The I should see an update of the Robots position
#
#  Scenario: Rotating the robot to the left
#    When I press the Left button
#    Then I should see an update of the Robots orientation to the left
#
#  Scenario: Rotating the robot to the right
#    When I press the right button
#    Then I should see an update of the Robots orientation to the right
