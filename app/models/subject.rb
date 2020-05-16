class Subject < ApplicationRecord
    has_many :pcr_inspections, dependent: :destroy
    include JpPrefecture

    validates :name, presence: true
    validates :gender, presence: true
    validates :birthday, presence: true
    validates :age, presence: true, numericality: { only_integer: true }
    validates :postcode, presence: true
    validates :prefecture_name, presence: true
    validates :address_city, presence: true
    validates :address_other, presence: true

    enum gender: { man: 1, woman: 2, other: 3}

    def view_ages
        a = age.to_i
        if a < 10
            "10歳未満"
        elsif a >= 10 && a < 20
            "10代"
        elsif a >= 20 && a < 30
            "20代"
        elsif a >= 30 && a < 40
            "30代"
        elsif a >= 40 && a < 50
            "40代"
        elsif a >= 50 && a < 60
            "50代"
        elsif a >= 60 && a < 70
            "60代"
        elsif a >= 70 && a < 80
            "70代"
        elsif a >= 80 && a < 90
            "80代"
        elsif a >= 90 && a < 100
            "90代"
        else 
            "100歳以上"
        end
    end
end
