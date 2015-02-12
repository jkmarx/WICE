class FoodflagsController < ApplicationController

  def index
    @foodflags = Foodflag.all
  end

end
