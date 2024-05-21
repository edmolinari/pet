FactoryBot.define do
  factory :pet do
    name  { "Buddy" }
    kind  { "Dog" }
    breed { "Golden Retriever" }
    weight { 2.34 }

    owner { FactoryBot.create(:owner)}
  end
end