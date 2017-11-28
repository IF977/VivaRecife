Feature: buscar_bairro
	As a productOwner
	I want to see the list of neighbourhoods
	So that I can see all the possible neighbourhoods in the city and choose between them

	Scenario: Searching for an existent neighbourhood
		Given I am on the index link
		When I click on the bairros/index link
		And put <bairro> on the search input
		And click on the Buscar button
		Then I should see the text Nome do Bairro:

	Scenario: Searching for an inexistent neighbourhood
		Given I am on the index link
		When I click on the bairros/index link
		And put <bairro> on the search input
		And click on the Buscar button
		Then I should see the text Nenhum bairro encontrado!

	Scenario: Clicking on a bairro link on the list
		Given I am on the index link
		When I click on the bairros/index link
		And put <bairro> on the search input
		And click on the Buscar button
		Then I should see a Aflitos link and click on it
