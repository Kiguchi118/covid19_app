class PcrInspection < ApplicationRecord
    belongs_to :subject
    belongs_to :clinic

    validates :inspection_status, presence: true
end
