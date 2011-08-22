Feature: Manage sort_merchants
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: The story list display should be sorted by priority
    Given a merchant named "Uncle Pretzel" located in "Evanston, IL"
    And a merchant named "Old Army" located in "Chicago, IL"
    And a merchant named "Abercrombie and Fonz" located in "Oak Park, IL" 
    When I go to the merchants page
    Then I see the merchants like so:
      | Abercrombie and Fonz | Oak Park | IL |
      | Old Army             | Chicago  | IL |
      | Uncle Pretzel        | Evanston | IL |
  
