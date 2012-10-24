class StreamsController < ApplicationController
  def streams
  end

  def show
    @stream = Stream.find_by_channel_name!(params[:id])
  end
end 
