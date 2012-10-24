class GamesController < ApplicationController
  def games
  end

  def show
    @game = Game.find_by_name!(params[:id])
  end
end 