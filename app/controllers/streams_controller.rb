class StreamsController < ApplicationController
  def index
    @streams = Stream.all
  end

  def show
    @stream = Stream.find(params[:id])
    # Stream.destroy_all
    # Stream.populate
  end
end 
