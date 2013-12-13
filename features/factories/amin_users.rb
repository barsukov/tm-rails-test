FactoryGirl.define do
  factory :admin_user  do
    email 'admin@example.ru'
    password 'password'
    password_confirmation 'password'
    role 'admin'

    trait :campaign_user_role do
      email 'cmt@example.ru'
      password 'password'
      password_confirmation 'password'
      role 'campaign_manager'
    end
    factory :campaign_user, traits: [:campaign_user_role]
  end

end
