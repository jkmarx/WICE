class WelcomeController < ApplicationController

  def index
    @allergies = Allergy.all
  end

end
