class Game < ActiveRecord::Base
  attr_accessible :logo, :name, :viewers

  def self.populate
    url = "https://api.twitch.tv/kraken/games/top"
    rest = RestClient.get(url)
    json = JSON.parse(rest)
    games = json["top"]

    games.each do |game|
      if found_game = Game.find_by_name(game["game"]["name"])
        found_game.update_attribute(:viewers, game["viewers"])
      else
        Game.create!({
          :name => game["game"]["name"],
          :logo => game["game"]["images"]["screen"],
          :viewers => game["viewers"]
        })
      end
    end
  end

  def logo
    super || default_logo
  end

  def default_logo
    "http://i.imgur.com/I1B7x.gif"
  end

  def ordered_streams
    Stream.where(:game => self.name).sort do |a,b|
      b.viewers <=> a.viewers
    end.slice(0...9)
  end
end
