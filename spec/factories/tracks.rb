# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :track do
    artist "Artist Name"
    title "Song Name"
    owned false
  end
end
