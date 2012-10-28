class GamesController < ApplicationController
  def games
    Game.destroy_all
    Game.populate
  end

  def show
    @game = Game.find(params[:id])
  end
end 