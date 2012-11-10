class GamesController < ApplicationController
  def index
    @games = Game.all.sort { |a,b| b.viewers <=> a.viewers }
  end

  def show
    @game = Game.find(params[:id])
  end
end 