Dado('que {string} acessou a aba de unidades atráves da página principal') do |string|
  @pages.home_page.load
  @pages.home_page.wait_until_opcao_de_navegacao_pelo_carrousel_a_esquerda_visible
  @pages.home_page.get_aba_pelo_nome(nome:'unidades').click
end

Dado('ele utiliza o filtro por facilidade selecionando os seguintes itens:') do |table|
  @pages.unidade_page.wait_until_filtro_por_facilidade_visible
  @pages.unidade_page.filtro_por_facilidade.click
  @pages.unidade_page.wait_until_lista_de_elementos_do_filtro_por_facilidade_visible
  @pages.unidade_page.selecione_os_seguites_itens(lista_de_itens: table)
  @pages.unidade_page.wait_until_nome_das_unidades_apresentadas_no_card_visible
  @nome_da_unidade = @pages.unidade_page.nome_das_unidades_apresentadas_no_card.first.text
end

Quando('ele seleciona a opção de Ver Detalhes da primeira unidade apresentada') do
  @pages.unidade_page.ver_detalhes_aprasentadas_no_card.first.click
  @pages.unidade_page.wait_until_ver_detalhes_aprasentadas_no_card_invisible
end

Então('as mesmas informações apresentadas no card anterior devem ser apresentados') do
  @pages.detalhes_da_unidade_page.wait_until_nome_da_unidade_visible
  expect(@pages.detalhes_da_unidade_page.nome_da_unidade.text.downcase).to eq(@nome_da_unidade.downcase)
end