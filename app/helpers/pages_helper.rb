module PagesHelper

  def challenge(text)
    content_tag :li do
      concat content_tag(:span, "Challenge", class: 'label label-default')
      concat text
    end
  end

  def user_story(persona, text)
    item = "As a #{persona}, #{text}"
    content_tag :li do
      concat content_tag(:span, "User Story", class: 'label label-success')
      concat item
    end
  end

  def business_rule(text)
    content_tag(:li) do
      concat content_tag(:span, "Business Rule", class: 'label label-primary')
      concat text
    end
  end
end
