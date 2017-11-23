  require 'spec_helper'

describe 'axa get quote' do
  before(:all) do
    @driver = Capybara::Session.new(:chrome)
    @driver.visit('https://www.axappphealthcare.co.uk/')
  end

  it "should have the 'get free quote' element on the page" do
    @driver.find(:xpath, '//*[@id="ctl00_cphMain_dz5_columnDisplay_ctl00_controlcolumn_ctl00_WidgetHost_WidgetHost_widget_CB"]/div/div/div/div[1]/div/div[1]/div/a').click

  end

  it "should be on the form page" do
    expect(@driver.current_url 'https://epmi.axappphealthcare.co.uk/PMIQuote/')
    @driver.has_selector?(:xpath, '//*[@id="HeaderPlaceHolder_QuoteHeader1_lnkMainLogo"]')
    @driver.switch_to_window(@driver.windows.last)
  end
  # it "find the first name field" do
  #   # @driver.find_field('element firstnameField').value
  # end
end

# @driver.switch_to_frame(1)
