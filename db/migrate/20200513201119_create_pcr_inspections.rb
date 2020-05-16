class CreatePcrInspections < ActiveRecord::Migration[5.2]
  def change
    create_table :pcr_inspections do |t|
      t.references :subject, foreign_key: true, null: false
      t.references :clinic, foreign_key: true, null: false
      t.date :publication_date, null: false
      t.boolean :inspection_status, null: false
      t.text :remark

      t.timestamps
    end
  end
end
