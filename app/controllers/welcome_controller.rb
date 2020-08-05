class WelcomeController < ApplicationController
  def home
    some_value = true

    if some_value
      redirect_to root_url, flash: { success: "Redirect successful" }
    else
      redirect_to welcome_features_path
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
