class StreamsController < ApplicationController
  def streams
    Stream.destroy_all
    Stream.populate
  end

  def show
    @stream = Stream.find(params[:id])
  end
end 
