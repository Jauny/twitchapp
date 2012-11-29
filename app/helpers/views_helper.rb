module ViewsHelper
  def stream_link(stream)
    link_to "#{stream.name}: #{stream.viewers}",
                  "http://www.twitch.tv/#{stream.channel_name}",
                  :target => "_blank"
  end
end
