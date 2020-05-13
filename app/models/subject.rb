class Subject < ApplicationRecord

    validates :name, presence: true
    validates :gender, presence: true
    validates :birthday, presence: true
    validates :address, presence: true

    enum gender: { man: 1, woman: 2, other: 3}
    
end
