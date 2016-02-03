FactoryGirl.define do
  sequence(:email) { |n| "test#{n}@example.com" }

  factory :user do
    family 'Anon'
    name   'noname'
    phone  '1234567'
    password '12345678dD%'
    password_confirmation '12345678dD%'
    email
    status 'Active'
  end
end
