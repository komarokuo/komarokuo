class CreateStaffMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :staff_members do |t|
      t.string :email, null: false      #mail address
      t.string :family_name, null: false      #family name
      t.string :given_name, null: false     #given name
      t.string :family_name_kana, null: false     #family name(katakana)
      t.string :given_name_kana, null: false      #given name(katakana)
      t.string :hashed_password     #password
      t.date :start_date, null: false       #start date
      t.date :end_date      #end date
      t.boolean :suspended, null: false, default: false     #invalid flag

      t.timestamps
    end

    add_index :staff_members, "LOWER(email)", unique: true
    add_index :staff_members, [ :family_name_kana, :given_name_kana ]
  end
end
