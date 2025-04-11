class Assessment < ApplicationRecord
  belongs_to :patient

  validates :edema, inclusion: { in: [true, false] }
  validates :labor_duration, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :contraction_pattern, presence: true
  validates :cervical_dilation, numericality: true
  validates :uterine_tone, presence: true
  validates :fetal_head_position, presence: true
end
