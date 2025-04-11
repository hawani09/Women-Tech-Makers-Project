class Record < ApplicationRecord
  belongs_to :patient

  validates :heart_rate, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :blood_pressure_systolic, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :blood_pressure_diastolic, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :oxygen_saturation, presence: true, numericality: true
  validates :weight, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :recorded_at, presence: true
end
