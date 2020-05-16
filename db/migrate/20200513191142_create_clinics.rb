class CreateClinics < ActiveRecord::Migration[5.2]
  def change
    create_table :clinics do |t|
      t.string :name,   null: false
      t.integer :city,   null: false

      t.timestamps
    end
  end
end
