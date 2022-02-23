class MainController < ApplicationController
  def index
    flash.now[:notice] = "Logged in successfully"
    flash.now[:alert] = "Invalid username and password"
  end
end