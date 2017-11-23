  require 'capybara'

  Capybara::register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end

  driver = Capybara::Session.new(:chrome)

  driver.visit 'http://toolsqa.com/automation-practice-form/'

  driver.fill_in('firstname', with: 'Henry')
  driver.fill_in('lastname', with: 'Koleoso')

  driver.choose('sex-0')
  
