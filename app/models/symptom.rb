class Symptom < ApplicationRecord
  belongs_to :patient

  validates :name, presence: true
  validates :severity, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 2 }
  validates :reported_at, presence: true
end
