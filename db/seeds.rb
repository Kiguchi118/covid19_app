# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"

CSV.foreach('db/csv/clinic.csv', headers: true) do |row|
  Clinic.create(
    name: row['name'],
    city: row['city']
  )
end

CSV.foreach('db/csv/data.csv', headers: true) do |row|
  Subject.create!(
    name: row[0],
    gender: row['gender'],
    birthday: row['birthday'],
    age: row['age'],
    postcode: row['postcode'],
    prefecture_name: row['prefecture_name'],
    address_city: row['address_city'],
    address_other: row['address_other']
  )
  PcrInspection.create!(
    subject_id: row[8],
    clinic_id: row[9],
    publication_date: row['publication_date'],
    inspection_status: row['inspection_status'],
    remark: row['remark']
  )
end
