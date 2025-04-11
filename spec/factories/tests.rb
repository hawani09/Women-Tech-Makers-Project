FactoryBot.define do
  factory :test do
    patient { nil }
    test_type { "MyString" }
    value { "9.99" }
    unit { "MyString" }
    test_date { "2025-04-10 08:11:56" }
  end
end
