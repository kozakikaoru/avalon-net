# frozen_string_literal: true

class CreateResults < ActiveRecord::Migration[6.0]
  def change
    create_table :results do |t|
      t.references :tournament, null: false, foreign_key: true
      t.integer    :rank,       null: false,             comment: '順位'
      t.string     :player_ign,                          comment: '名称'
      t.integer    :kill,       null: false, default: 0, comment: 'キル数'
      t.integer    :damage,     null: false, default: 0, comment: 'ダメージ'

      t.timestamps
    end
  end
end
