class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    # Game.destroy_all
    # Game.populate
  end
end 