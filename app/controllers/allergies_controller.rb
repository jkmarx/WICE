class AllergiesController < ApplicationController

  def index
    @allergies = Allergy.all
  end
end
