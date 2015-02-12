require 'rails_helper'

RSpec.describe 'routes for allergies' do
  it 'routes GET /allergies to the allergies controller' do
    expect(get("/allergies")).to route_to('allergies#index')
  end
end
