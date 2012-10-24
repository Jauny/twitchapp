class StreamsController < ApplicationController
  def streams
  end

  def show
    @stream = Stream.find(params[:id])
  end
end 
