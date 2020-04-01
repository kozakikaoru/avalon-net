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
    button_with_icon path, 'add', '新規登録', 'blue darken-1'
  end

  def edit_button(path)
    button_with_icon path, 'edit', '編集', 'light-green'
  end

  private

  # アイコン一覧
  # https://materializecss.com/icons.html
  def button_with_icon(path, icon_name, text, color)
    link_to path, class: "waves-effect waves-light btn right #{color}" do
      concat tag.i icon_name, class: 'material-icons left'
      concat text
    end
  end
end
