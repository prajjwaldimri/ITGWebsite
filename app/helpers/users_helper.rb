module UsersHelper

  #Returns gravatar images for user emails
  def gravatar_for(user, options={size: 120})
    if !user.email.nil?
      gravatar_id = Digest::MD5::hexdigest(user.email)
      size = options[:size]
      gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
      image_tag(gravatar_url, alt: user.name, class: "gravatar")    
    end
  end

  #Returns gravatar images url
  def gravatar_url(user, options={size:120})
    if !user.email.nil?
      gravatar_id = Digest::MD5::hexdigest(user.email)
      size = options[:size]
      gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
      gravatar_url
    end
  end
end
