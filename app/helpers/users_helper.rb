module UsersHelper

  #Returns gravatar images for user emails
  def gravatar_for(user, options={size: 80})
    gravatar_id = Digest::MD5::hexdigest(user.email)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
