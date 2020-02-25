# frozen_string_literal: true

class Organizer < ApplicationRecord
  validates :name, presence: true
end
