# frozen_string_literal: true

module ButtonHelper
  def new_registration_button(path)
    button_with_icon path, 'add', '新規登録', 'right blue darken-1'
  end

  def edit_button(path)
    button_with_icon path, 'edit', '編集', 'light-green'
  end

  def delete_button(path)
    link_to path, class: 'waves-effect waves-light btn red lighten-1',
                  data: { confirm: '本当に削除してよろしいですか？' },
                  method: :delete do
      concat tag.i 'delete', class: 'material-icons left'
      concat '削除'
    end
  end

  def back_button(path)
    button_with_icon path, 'reply', '戻る', 'left amber lighten-2'
  end

  # TODO: f.submitにmaterial適用できなくて妥協・・・
  #       どうにかしたい。
  def submit_classes
    'waves-effect waves-light btn right light-green darken-2'
  end

  def result_registration_button(path)
    button_with_icon path, 'speaker_notes', 'リザルト', 'deep-purple lighten-2'
  end

  def results_import_button
    button_with_icon '#', 'input', '画像読み込み', 'right brown lighten-2 disabled'
  end

  private

  # アイコン一覧
  # https://materializecss.com/icons.html
  def button_with_icon(path, icon_name, text, classes)
    link_to path, class: "waves-effect waves-light btn #{classes}" do
      concat tag.i icon_name, class: 'material-icons left'
      concat text
    end
  end
end
