class Device < ApplicationRecord
    has_many :notes
    belongs_to :employees, optional: true
end
