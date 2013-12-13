FactoryGirl.define do
  factory :platform do
    trait :android do
      name 'android'
    end
    trait :ios do
      name 'android'
    end

    factory :android_platform , traits:[:android]
    factory :ios_platform , traits:[:ios]


  end
end
