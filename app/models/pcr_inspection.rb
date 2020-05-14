class PcrInspection < ApplicationRecord
    belongs_to :subject
    belongs_to :clinic

    validates :inspection_status, inclusion: {in: [true, false]}
end
