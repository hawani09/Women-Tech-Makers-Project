class Test < ApplicationRecord
  belongs_to :patient

  validates :test_type, presence: true
  validates :value, presence: true, numericality: true
  validates :unit, presence: true
  validates :test_date, presence: true
end
