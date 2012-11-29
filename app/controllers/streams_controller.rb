class StreamsController < ApplicationController
  def index
    @streams = Stream.all.sort { |a,b| b.viewers <=> a.viewers }.shift(9)
  end

  def show
    @stream = Stream.find(params[:id])
  end
end 
