class WelcomeController < ApplicationController
  def home
    some_value = true

    if some_value
      @message = 'Welcome to the home page'
    else
      @message = 'Go away'
    end
    logger.debug @message
  end

  def features
  end

  def about
  end

  def contact
  end
end
