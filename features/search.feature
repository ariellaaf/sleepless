Feature: Search bar 
  In order to use the website
  I need to be able to make a search
  
  Scenario: Searching for workshops
    Given I use the search bar
    When I search the term "workshops"
    Then then the results will contain "workshops"