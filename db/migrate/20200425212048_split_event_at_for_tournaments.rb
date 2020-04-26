class SplitEventAtForTournaments < ActiveRecord::Migration[6.0]
  def up
    change_table :tournaments do |t|
      t.remove :event_at

      t.date :events_on,   null: false, after: :prize,     comment: '開催日'
      t.time :events_time, null: false, after: :events_on, comment: '開催時間'
    end
  end

  def down
    change_table :tournaments do |t|
      t.remove :events_on, :events_time

      t.datetime :event_at, null: false, after: :prize, comment: '開催日時'
    end
  end
end
