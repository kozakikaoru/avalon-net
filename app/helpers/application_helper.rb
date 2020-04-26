# frozen_string_literal: true

module ApplicationHelper
  def page_title(title = nil)
    if title.present?
      "#{title} | #{AvalonNet::Application.config.title}"
    else
      AvalonNet::Application.config.title
    end
  end
end
