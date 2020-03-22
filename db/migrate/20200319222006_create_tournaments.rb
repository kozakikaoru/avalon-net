# frozen_string_literal: true

class CreateTournaments < ActiveRecord::Migration[6.0]
  def change
    create_table :tournaments do |t|
      t.string   :name,       null: false,           comment: '名称'
      t.integer  :game_type,  null: false, limit: 1, comment: 'ゲームタイプ'
      t.integer  :prize,      null: false,           comment: '賞金'
      t.datetime :evented_at, null: false,           comment: '開催日時'

      t.timestamps
    end
  end
end
