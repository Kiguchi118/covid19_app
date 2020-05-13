class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :name,     null: false
      t.integer :gender,  null: false
      t.date :birthday,   null: false
      t.string :address,  null: false

      t.timestamps
    end
  end
end
