class GameScraper
  attr_reader :games

  def initialize
    url = "https://api.twitch.tv/kraken/games/top"
    rest = RestClient.get(url)
    json = JSON.parse(rest)
    @games = json["top"]
  end