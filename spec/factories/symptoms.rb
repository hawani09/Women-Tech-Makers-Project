FactoryBot.define do
  factory :symptom do
    patient { nil }
    name { "MyString" }
    severity { 1 }
    description { "MyText" }
    reported_at { "2025-04-10 08:11:42" }
  end
end
