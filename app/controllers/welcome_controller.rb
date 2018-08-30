class WelcomeController < ApplicationController

  def index
      @cabins = Cabin.all
      @user = User.first
  end


end
