# frozen_string_literal: true

class Result < ApplicationRecord
  belongs_to :tournament

  validates :kill,       presence: true, numericality: { only_integer: true }
  validates :damage,     presence: true, numericality: { only_integer: true }
end
