  require_relative 'pages/homepage'
  require_relative 'pages/signinpage'

class BbcSite

  def homepage
    Homepage.new
  end

  def signinpage
    SignInPage.new
  end

end
