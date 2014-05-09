class WelcomeController < ApplicationController
  def index
  	@societies = Society.all
  end
end
