class Stream < ActiveRecord::Base
  attr_accessible :game, :name, :logo, :viewers, :channel_name

  def self.populate
    url = "https://api.twitch.tv/kraken/streams"
    rest = RestClient.get(url)
    json = JSON.parse(rest)
    streams = json["streams"]

    streams.each do |stream|
      if found_stream = Stream.find_by_channel_name(stream["channel"]["name"])
        found_stream.update_attribute(:viewers, stream["viewers"])
      else
        Stream.create!({
          :name => stream["channel"]["display_name"],
          :game => stream["game"],
          :logo => stream["channel"]["logo"],
          :viewers => stream["viewers"],
          :channel_name => stream["channel"]["name"]
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
end