class Clinic < ApplicationRecord
    has_many :pcr_inspections, dependent: :destroy
end
