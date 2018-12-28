FactoryBot.define do
  factory :helpwanted do
    name { "MyString" }
    location { "MyString" }
    wage_per_week { "9.99" }
    description { "MyText" }
    housing_offered { false }
    job { nil }
  end
end
