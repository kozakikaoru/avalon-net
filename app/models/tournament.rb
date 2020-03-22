# frozen_string_literal: true

class Tournament < ApplicationRecord
  validates :name,       presence: true
  validates :game_type,  presence: true
  validates :prize,      presence: true, numericality: { only_integer: true }
  validates :event_at, presence: true

  enum game_type: {
    single: 1,
    duo: 2,
    squad: 4,
    quintetto: 5
  }
end
