Before do |scenario|
  @pages = PageFactory.new
  @browser = Capybara.page.driver.browser
  @browser.manage.window.maximize
end

After do
  #Descomentar/comentar a linha abaixo se você quiser que o browser feche e re-abra ao final de cada test
  Capybara.current_session.driver.quit
end
