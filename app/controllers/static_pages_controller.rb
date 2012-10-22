class StaticPagesController < ApplicationController
  def home
      url = "https://api.twitch.tv/kraken/games/top"
       get = RestClient.get(url)
       json = JSON.parse(get)
       @every_top_games = json["top"]
  end

end
