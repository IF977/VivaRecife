Feature: conhecer_ideia
    As a productOwner
    I want to view the the Sobre page
    So that I can know some information about the project
    
    Scenario: Acessing Sobre page
        Given I am on the index link
        When I click on the sobre/index link
        Then I should see the text Sobre
