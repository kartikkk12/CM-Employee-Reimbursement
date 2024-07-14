class Bill < ApplicationRecord
  self.inheritance_column = 'not_sti'

  belongs_to :employee

  TYPES = %w(food travel others).freeze

  validates :amount, numericality: { greater_than: 0 }
  validates :type, presence: true, inclusion: { in: TYPES }

  private

  def self.types
    TYPES
  end
end