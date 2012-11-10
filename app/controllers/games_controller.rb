class GamesController < ApplicationController
  def index
    @games = Game.all.sort { |a,b| b.viewers <=> a.viewers }
  end

  def show
    @game = Game.find(params[:id])

    @game_streams = []
    Stream.where(:game => @game.name).sort do |a,b|
      b.viewers <=> a.viewers
    end.each do |stream|
      @game_streams << stream
      break if @game_streams.length == 10
    end
  end
end 