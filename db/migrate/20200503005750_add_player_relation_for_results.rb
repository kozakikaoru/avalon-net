class AddPlayerRelationForResults < ActiveRecord::Migration[6.0]
  def change
    add_reference :results, :player, foreign_key: true, after: :rank
  end
end
