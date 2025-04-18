FactoryBot.define do
  factory :record do
    patient { nil }
    heart_rate { 1 }
    blood_pressure_systolic { 1 }
    blood_pressure_diastolic { 1 }
    oxygen_saturation { "9.99" }
    weight { "9.99" }
    recorded_at { "2025-04-10 08:11:48" }
  end
end
