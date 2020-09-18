Before do |scenario|
  @pages = PageFactory.new
  @browser = Capybara.current_session.driver

end

After do
  page.execute_script "window.close();"
end
