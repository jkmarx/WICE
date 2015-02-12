require 'rails_helper'

RSpec.describe 'routes for ingredientflags' do
  it 'routes GET /ingredientflags to the ingredientflags controller' do
    expect(get("/ingredientflags")).to route_to('ingredientflags#index')
  end
end
