module PagesHelper

  def challenge(text)
    label = content_tag(:span, "Challenge", class: 'label label-default')
    content_tag :li do
      label + text.html_safe
    end
  end

  def user_story(persona, text)
    label = content_tag(:span, "User Story", class: 'label label-success')
    content_tag :li do
      label + "As a #{persona}, #{text}".html_safe
    end
  end

  def business_rule(text)
    label = content_tag(:span, "Business Rule", class: 'label label-primary')
    content_tag(:li) do
      label + text.html_safe
    end
  end
end
