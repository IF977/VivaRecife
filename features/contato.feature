Feature: contato
    As a productOwner
    I want to send some information via a form
    So that I can get in touch with the website
    
    Scenario: Message sent successfully
        Given I am on the index link
        When I click on the contato/index link
        And put <nome> on the name input
        And put <email> on the email input
        And put <message> on the message textarea
        And click on the Enviar button
        Then I should see the text Mensagem enviada com sucesso.
    
    Scenario: Creating a cliente without nome
        Given I am on the index link
        When I click on the contato/index link
        And put <nome> on the name input
        And put <email> on the email input
        And put <message> on the message textarea
        And click on the Enviar button
        Then I should see the text Mensagem enviada com sucesso.
        
    Scenario: Creating a cliente without email
        Given I am on the index link
        When I click on the contato/index link
        And put <email> on the email input
        And put <message> on the message textarea
        And click on the Enviar button
        Then I should see the text Insira seu nome.
        
    Scenario: Creating a cliente without message
        Given I am on the index link
        When I click on the contato/index link
        And put <nome> on the name input
        And put <message> on the message textarea
        And click on the Enviar button
        Then I should see the text Insira seu email.
        
    Scenario: Creating a cliente without message
        Given I am on the index link
        When I click on the contato/index link
        And put <nome> on the name input
        And put <email> on the email input
        And click on the Enviar button
        Then I should see the text Insira sua mensagem.
        