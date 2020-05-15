FactoryBot.define do
  sequence :string, aliases: [:first_name, :last_name, :password, :name, :description, :state] do |n|
    "string#{n}"
  end

  sequence :email do |n|
    "person#{n}@test.com"
  end

  sequence :avatar do |n|
    "path/to/avatar/#{n}"
  end

  sequence :expired_at do |n|
    DateTime.current + n.days
  end
end
