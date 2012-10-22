class StaticPagesController < ApplicationController
  def home
    @top_games = get_top_games
    @top_streams = get_top_streams
  end

  def get_top_games
    url = "https://api.twitch.tv/kraken/games/top"
    rest = RestClient.get(url)
    json = JSON.parse(rest)
    json["top"]
  end

  def get_top_streams
    url = "https://api.twitch.tv/kraken/streams"
    rest = RestClient.get(url)
    json = JSON.parse(rest)
    json["streams"]
  end
end
