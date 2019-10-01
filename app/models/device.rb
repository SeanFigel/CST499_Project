class Device < ApplicationRecord
    has_many :notes
    belongs_to :employees
end
