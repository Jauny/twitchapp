class GamesController < ApplicationController
  def index
    @games = Game.all.sort { |a,b| b.viewers <=> a.viewers }.shift(9)
  end

  def show
    @game = Game.find(params[:id])

    @game_streams = @game.ordered_streams
  end
end 