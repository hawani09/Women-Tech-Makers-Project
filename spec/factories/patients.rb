FactoryBot.define do
  factory :patient do
    first_name { "MyString" }
    last_name { "MyString" }
    dob { "2025-04-10" }
    medical_history { "MyText" }
  end
end
