class GamesController < ApplicationController
  def games
  end

  def show
    @game = Game.find(params[:id])
  end
end 