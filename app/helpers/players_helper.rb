module PlayersHelper

  # Returns the Gravatar (http://gravatar.com/) for the given player.
  def gravatar_for(player)
    gravatar_id = Digest::MD5::hexdigest(player.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: player.name, class: "gravatar")
  end

  def gravatar_for(player, options = { size: 150})
    gravatar_id = Digest::MD5::hexdigest(player.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: player.name, class: "gravatar")
  end
end
