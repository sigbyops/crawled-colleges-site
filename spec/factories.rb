FactoryGirl.define do
  factory :user do
    name     "Joe Lee"
    email    "m10zart@gmail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
