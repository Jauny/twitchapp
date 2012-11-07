class StreamsController < ApplicationController
  def index
    # Stream.destroy_all
    # Stream.populate
  end

  def show
    @stream = Stream.find(params[:id])
    # Stream.destroy_all
    # Stream.populate
  end
end 
