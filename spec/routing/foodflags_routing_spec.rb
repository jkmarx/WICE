require 'rails_helper'

RSpec.describe 'routes for foodflags' do
  it 'routes GET /foodflags to the foodflags controller' do
    expect(get("/foodflags")).to route_to('foodflags#index')
  end
end
