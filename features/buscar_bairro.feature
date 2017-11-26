Feature: buscar_bairro
	As a productOwner
	I want to see the list of neighbourhoods
	So that I can see all the possible neighbourhoods in the city and choose between them

	Scenario: Show all the items of the list of neighbourhoods
		Given I am on the index link
		When I click on the contato/index link
		Then I see all the neighbourhoods listed

	Scenario: Searching for an existent neighbourhood
		Given I am on the index link
		When I click on the contato/index link
		And put <bairro> on the search input
		And click on the buscar button
		Then I should see only the specific neighbourhood on the list

	Scenario: Searching for an inexistent neighbourhood
		Given I am on the index link
		When I click on the contato/index link
		And put <bairro> on the search input
		And click on the buscar button
		Then I should see 'Nenhum bairro encontrado!' message

	Scenario: Clicking on a bairro link on the list
		Given I am on the index link
		When I click on the contato/index link
		And put <bairro> on the search input
		And click on the buscar button
		Then I should see a bairro link and click on it
