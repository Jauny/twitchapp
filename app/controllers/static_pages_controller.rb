class StaticPagesController < ApplicationController
  def home
    Stream.populate
    Game.populate
  end

  def streams
    Stream.destroy_all
    Stream.populate
  end

  def games
    Game.destroy_all
    Game.populate
  end
end
