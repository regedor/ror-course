module ApplicationHelper

  def link_to_icon(icon_name, url_or_object, options={})
    options.merge!({ :class => "icon #{icon_name}" })

    link_to(image_tag("icons/#{icon_name}.png", { :title => icon_name }),
                      url_or_object,
                      options)
  end


  def resource_title_links(resource, options={})
    options[:actions] = [:show, :edit, :destroy] unless options[:actions]
    content_tag (options[:content_tag] || :h1) do
      html = [resource_label(resource)] 
      html << link_to_icon('show', resource) if options[:actions].member? :show 
      html << link_to_icon('edit', [:edit, resource]) if options[:actions].member? :edit
      html << link_to_icon('destroy', resource, {:confirm => 'Are you sure?', :method => :delete}) if options[:actions].member? :destroy
      
      html.join(' ').html_safe
    end
  end


  def resource_label(resource)
    return resource.title if resource.respond_to? :title
    return resource.name  if resource.respond_to? :name
    return resource.to_s  if resource.respond_to? :to_s
    resource.class.to_s.upcase
  end

  # Return the string 'first' if the passed object is the first
  # in the array.
  #
  # Used by CSS.
  def dom_class_first(object, array)
    if (object == array.first)
      return "first"
    end
    nil
  end

end
