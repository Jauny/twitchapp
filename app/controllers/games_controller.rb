class GamesController < ApplicationController
  def index
    Game.destroy_all
    Game.populate
  end

  def show
    @game = Game.find(params[:id])
    Game.destroy_all
    Game.populate
  end
end 