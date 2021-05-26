module ApplicationHelper
  def bootstrap_link_to(label, url, options = {})
    if cls = options.delete(:class)
      classes = Array(cls)
      classes.push("active") if current_page?(url)
      options[:class] = classes
    end
    link_to(label, url, options)
  end
end
