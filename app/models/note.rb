class Note < ApplicationRecord
    belongs_to :devices, optional: true
end
