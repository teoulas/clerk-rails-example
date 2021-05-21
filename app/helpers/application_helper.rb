module ApplicationHelper
  def bootstrap_link_to(label, url, options = {})
    if cls = options.delete(:class)
      classes = Array(cls)
      classes.push("active") if current_page?(url)
      options[:class] = classes
    end
    link_to(label, url, options)
  end

  def clerk_sign_in_url
    ENV.fetch("CLERK_SIGN_IN_URL")
  end

  def clerk_sign_up_url
    ENV.fetch("CLERK_SIGN_UP_URL")
  end

  def clerk_user_profile_url
    ENV.fetch("CLERK_USER_PROFILE_URL")
  end
end
