# VivaRecife 

# Passo-a-passo

### Objetivo
* Esse pequeno guia serve para orientar como a execução do projeto deve ser feita localmente, visto que o deploy do Heroku não ficou 100% funcional por problemas na implementação final do projeto.

#### Heroku
* No Heroku, as guias VivaRecife, Sobre e Contato funcionam normalmente. Inclusive o sistema de envio de e-mail de contato está funcional tanto no Heroku quanto no ambiente local. O que ocorre é que a guia Bairros gera uma exceção na plataforma, pois os dados do banco de dados sao gerados de uma forma não reconhecida por ela, explicada logo abaixo.

#### Ambiente Local (localhost)
* No localhost são necessários os seguintes passos:
* 1 - Ao dar bin/rails server pela <b>primeira</b> vez, o banco ainda não está populado, o que faz com que nenhum bairro seja encontrado na guia Bairros. Por esse motivo deve-se acessar primeiro a rota /inserindo_dados/index (localhost:3000/inserindo_dados/index) <b>apenas uma vez</b>;
* 2 - Ao seguir o passo acima, o bando de dados é totalmente populado localmente (inclusive não só com os bairros, mas com outras informações pernintentes a cada um deles que acabaram por não ser implementadas como planejado). Isso pode ser conferido através do pgAdmin. (Importante: acessar a rota do passo 1 apenas uma vez, caso contrário os dados ficarão duplicados);
* 3 - Após o passo 1 e 2 é possível acessar a aplicação normalmente, com a página de Bairros e o sistema de busca funcionando corretamente.
