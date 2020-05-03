# frozen_string_literal: true

class Player < ApplicationRecord
  validates :ign, presence: true,
                  uniqueness: true,
                  length: { maximum: 14 }
  validates :igid, uniqueness: true,
                   numericality: { allow_blank: true, only_integer: true }
end
