class GamesController < ApplicationController
  def games
  end

  def show
    @game = Game.find(params[:id])
  end

  def gamename
    @game = Game.find_by_name(params[:id])
    render @game
  end
end 