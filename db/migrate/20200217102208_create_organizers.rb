# frozen_string_literal: true

class CreateOrganizers < ActiveRecord::Migration[6.0]
  def change
    create_table :organizers do |t|
      t.string :name, null: false, comment: '名称'

      t.timestamps
    end
  end
end
