Feature: acessar_views
  As a productOwner
  I want to view each one of the pages links
  So that I can click on them
  
  Scenario: Visiting the Home link
    Given I am on the index link
    When I click on the home/index link
    Then I should be on the home link

  Scenario: Visiting the Bairros link
    Given I am on the index link
    When I click on the bairros/index link
    Then I should be on the bairros link
  
  Scenario: Visiting the Sobre link
    Given I am on the index link
    When I click on the sobre/index link
    Then I should be on the sobre link
  
  Scenario: Visiting the Contato link
    Given I am on the index link
    When I click on the contato/index link
    Then I should be on the contato link
    