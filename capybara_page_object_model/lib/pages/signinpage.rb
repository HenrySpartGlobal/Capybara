require 'capybara/dsl'

class SignInPage
  include Capybara::DSL

  SIGN_IN_PAGE_LINK = 'https://account.bbc.com/signin'
  USERNAME_FIELD_ID = '#user-identifier-input'
  PASSWORD_FIELD_ID = '#password-input'
  SUBMIT_BUTTON_ID = '#submit-button'
  HELP_LINK_ID = '//*[@id="signin-page"]/div[2]/div[2]/div[2]/div[1]/div[2]/form/p/a'

  def visit_sign_in_page
    visit(SIGN_IN_PAGE_LINK)
  end
#username field methods
  def username_field
    find(USERNAME_FIELD_ID)
  end

  def input_username(username)
    username_field.send_keys(username)
  end
#password field methods
  def password_field
    find(PASSWORD_FIELD_ID)
  end

  def input_password(password)
    password_field.send_keys(password)
  end
#submit button methods
  def submit_button
    find(SUBMIT_BUTTON_ID)
  end

  def click_submit_button
    submit_button.click
  end
#links methods
  def click_help_link_button
    help_link.click
  end
end
