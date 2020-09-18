require_relative './actions/unidade_action.rb'

class Unidade < SitePrism::Page
  include UnidadeActions

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
end
