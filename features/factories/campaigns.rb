FactoryGirl.define do
  factory :campaign do
    name "company"
    budget 500
    trait :with_platform do
      before(:create) do |meeting|
        meeting.platforms << create_list(:android_platform,3)
      end
    end
    trait :require_budget do
      name "company_require"
      budget 2000
    end

    factory :campaign_with_platforms_require_budget , traits:[:with_platform,:require_budget]
    factory :campaign_with_platforms , traits:[:with_platform]


  end
end
