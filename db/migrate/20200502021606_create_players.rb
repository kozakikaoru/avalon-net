class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :ign, null: false, limit: 14, comment: '荒野名'
      t.string :igid,                        comment: '荒野ID'

      t.timestamps
    end

    add_index :players, :ign,  unique: true
    add_index :players, :igid, unique: true
  end
end
