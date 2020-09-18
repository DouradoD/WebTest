# language: pt

@busca_por_unidade
Funcionalidade: Busca por unidade
  Como um usuário da aplicação
  Lucas deseja ter acesso a buscar por unidades de atendimento
  Para encontrar uma unidade que encaixe em suas demandas

  Contexto:
    Dado que "Lucas" acessou a aba de unidades atráves da página principal

  @positivo
  Esquema do Cenário: Busca por unidade utilizando o filtro por facilidade
    E ele utiliza o filtro por facilidade selecionando os seguintes itens:
      |itens    |
      | <item1> |
      | <item2> |
      | <item3> |
    Quando ele seleciona a opção de Ver Detalhes da primeira unidade apresentada
    Então as mesmas informações apresentadas no card anterior devem ser apresentados
    Exemplos:
      | item1                     | item2     | item3                    |
      | Bicicletário e vaga verde | Vacinação | Atendimento aos domingos |
      | Bicicletário e vaga verde | Vacinação |                          |
      | Bicicletário e vaga verde |           | Atendimento aos domingos |
      |                           | Vacinação | Atendimento aos domingos |
      | Bicicletário e vaga verde |           |                          |
      |                           | Vacinação |                          |
      |                           |           | Atendimento aos domingos |
