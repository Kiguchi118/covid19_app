class Subject < ApplicationRecord

    enum gender: { man: 1, woman: 2, other: 3}
    
end
