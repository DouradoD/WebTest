class Unidade < SitePrism::Page
  set_url 'https://www.fleury.com.br/unidades'
  element :filtro_por_facilidade, :id, 'checkoox-select-facilities'
  elements :nome_das_unidades_apresentadas_no_card, :xpath, '//div[contains(@id,"unit-cell")]//h3'
  elements :ver_detalhes_aprasentadas_no_card, :xpath, '//a[contains(@id,"button-see-on-map-2")]/div'
  elements :lista_de_elementos_do_filtro_por_facilidade, :xpath, 
  '//button[@id="button-checkbox-select"]/following-sibling::div//label[@kind="default"]'

  def elemento_da_lista_do_filtro_por_facilidade_por_nome(nome:)
          lista_de_elementos_do_filtro_por_facilidade.select { 
            |item| item.text.downcase.include? name.downcase 
          }.first
  end

  def selecione_os_seguites_itens(lista_de_itens:)
    i = 0
    list = []
    lista_de_itens.rows.each {|rows| list.push(rows[0])}
    while(i < list.length) do
      element = lista_de_elementos_do_filtro_por_facilidade.select {|item| item.text.downcase.include? list[i].downcase}.first.click unless list[i].empty? 
      i = i + 1 
    end
  end
end
