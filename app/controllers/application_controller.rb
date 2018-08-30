class ApplicationController < ActionController::Base

  def index
    @user = User.first
  end

end
