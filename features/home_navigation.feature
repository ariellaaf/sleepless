 Feature: Homepage Navigation
    In order to navigate sections on the homepage 
    I need to be able to click on navigation

  Scenario: Going to section Mentors                         
    Given I am on the homepage                   
    When I click on navigation link Mentors                        
    Then I should see a button "meet the mentors"  