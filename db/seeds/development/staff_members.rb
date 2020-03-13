StaffMember.create!(
  email: "portfolio@example.com",
  family_name: "報都",
  given_name: "フォ理男",
  family_name_kana: "ポウト",
  given_name_kana: "フォリオ",
  password: "password",
  start_date: Date.today
)

family_names = %w{
  砂糖:サトウ:sato
  鱸:スズキ:suzuki
  鷹箸:タカハシ:takahashi
  棚下:タナカ:tanaka
}

given_names = %w{
  里尾:サトオ:satoo
  鈴緒:スズオ:suzuo
  高羽尾:タカハオ:takahao
  棚尾:タナオ:tanao
  謎男:ナゾオ:nazoo
}

20.times do |n|
  fn = family_names[n % 4].split(":")
  gn = given_names[n % 5].split(":")

  StaffMember.create!(
    email: "#{fn[2]}.#{gn[2]}@example.com",
    family_name: fn[0],
    given_name: gn[0],
    family_name_kana: fn[1],
    given_name_kana: gn[1],
    password: "password",
    start_date: (100 - n).days.ago.to_date,
    end_date: n == 0 ? Date.today : nil,
    suspended: n == 1
  )
end
