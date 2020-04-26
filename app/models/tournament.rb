# frozen_string_literal: true

class Tournament < ApplicationRecord
  has_many :results, dependent: :delete_all
  accepts_nested_attributes_for :results

  validates :name,        presence: true
  validates :game_type,   presence: true
  validates :prize,       presence: true, numericality: { only_integer: true }
  validates :events_on,   presence: true
  validates :events_time, presence: true

  enum game_type: {
    single: 1,
    duo: 2,
    squad: 4,
    quintetto: 5
  }

  # TODO: tournamentテーブルに参加人数を設ける
  def build_results
    1.upto 100 do |rank|
      results.build rank: rank
    end
  end
end
