# frozen_string_literal: true

module ApplicationHelper
  def page_title(title = nil)
    if title.present?
      "#{title} | #{AvalonNet::Application.config.title}"
    else
      AvalonNet::Application.config.title
    end
  end

  def new_registration_button(path)
    link_to path, class: 'waves-effect waves-light btn right' do
      concat tag.i 'add', class: 'material-icons left'
      concat '新規登録'
    end
  end
end
