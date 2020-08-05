class WelcomeController < ApplicationController


  before_action :set_values

  def home
  end

  def features
  end

  def about
  end

  def contact
  end

  private

  def set_values
    #gets called before any other action on this page
    @name = "David"
    #passes the instance variable @name to all actions unless otherwise stated
  end


end
