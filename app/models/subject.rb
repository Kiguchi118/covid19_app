class Subject < ApplicationRecord
    has_many :pcr_inspections, dependent: :destroy

    validates :name, presence: true
    validates :gender, presence: true
    validates :birthday, presence: true
    validates :age, presence: true
    validates :postcode, presence: true
    validates :prefecture_name, presence: true
    validates :address_city, presence: true
    validates :address_other, presence: true

    enum gender: { man: 1, woman: 2, other: 3}
end
