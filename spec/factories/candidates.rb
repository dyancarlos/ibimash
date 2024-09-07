FactoryBot.define do
  factory :candidate do
    name { Faker::Name.first_name }
    rating { 1500 }
    plays_count { 0 }
    avatar { 'candidate.jpg' }
    special { false }
  end
end
