class AddDefaultToPrizeOfTournaments < ActiveRecord::Migration[6.0]
  def up
    change_column :tournaments, :prize, :integer, default: 1500
  end

  def down
    change_column :tournaments, :prize, :integer, default: nil
  end
end
