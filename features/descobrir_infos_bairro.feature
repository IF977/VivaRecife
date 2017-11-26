Feature: descobrir_infos_bairros
    As a productOwner
    I want to see a list of establishments and events in my neighbourhood
    So that I can know about the possibilities of events and nearby places
    
    Scenario: Acessing Sobre page
        Given I am on the index link
        When I click on the bairros/index/bairro link
        Then I should see the bairro title and info

    Scenario: View the neighbourhood map
        Given I am on the index link
        When I click on the bairros/index/bairro link
        Then I should see neighbourhood map
