FactoryBot.define do
  factory :user do
    first_name
    last_name
    password
    email
    avatar

    factory :developer do
      type { 'Developer' }
    end

    factory :manager do
      type { 'Manager' }
    end

    factory :admin do
      type { 'Admin' }
    end
  end
end
