
require 'rails_helper'

RSpec.describe 'routes for recipes' do
  it 'routes GET /users/:user_id/recipes to the recipes controller' do
    expect(get("/users/1/recipes")).to route_to('recipes#index', user_id: "1")
  end

  it 'routes GET /users/:user_id/recipes/new to the recipes controller' do
    expect(get('/users/1/recipes/new')).to route_to('recipes#new', user_id: "1")
  end

  it 'routes POST /users/:user_id/recipes to the recipes controller' do
    expect(post('/users/1/recipes')).to route_to('recipes#create', user_id:"1")
  end

  it 'routes GET /recipes/:id/edit to the recipes controller and sets id' do
    expect(get('recipes/1/edit')).to route_to(
      controller: 'recipes',
      action: 'edit',
      id: '1'
    )
  end

  it 'routes PATCH /users/:user_id/recipes/:id to the recipes controller and sets id' do
    expect(patch('/recipes/1/')).to route_to(
      controller: 'recipes',
      action: 'update',
      id: '1'
    )
  end

  it 'routes DELETE /users/:user_id/recipes/:id to the recipes controller and sets id' do
    expect(delete('/recipes/1')).to route_to(
      controller: 'recipes',
      action: 'destroy',
      id: '1'
    )
  end
end
