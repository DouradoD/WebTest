class Home < SitePrism::Page
  set_url 'https://www.fleury.com.br/'
  element :agendar_exame, :css, '#test-schedule-modal-button'
  element :opcao_de_navegacao_pelo_carrousel_a_esquerda, :css, 'svg#carousel-back-banner-carousel'
  elements :abas, :css, 'a#button-title-desktop-header div'

  def get_aba_pelo_nome(nome:)
    abas.select { |item| item.text.downcase.include? nome.downcase }.first
  end
end
