class Game < ActiveRecord::Base
  attr_accessible :logo, :name, :viewers

  def self.populate
    url = "https://api.twitch.tv/kraken/games/top"
    rest = RestClient.get(url)
    json = JSON.parse(rest)
    games = json["top"]

    games.each do |game|

      Game.create!({
        :name => game["game"]["name"],
        :logo => game["game"]["images"]["screen"],
        :viewers => game["viewers"]
        })
    end
  end

  def logo
    super || default_logo
  end

  def default_logo
    "http://i.imgur.com/I1B7x.gif"
  end
end
