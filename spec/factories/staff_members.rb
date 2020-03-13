FactoryBot.define do
  factory :staff_member do
    sequence(:email) { |n| "member#{n}@example.com" }
    family_name { "報都" }
    given_name { "フォ理男" }
    family_name_kana { "ポウト" }
    given_name_kana { "フォリオ" }
    password { "pw" }
    start_date { Date.yesterday }
    end_date { nil }
    suspended { false }
  end
end
