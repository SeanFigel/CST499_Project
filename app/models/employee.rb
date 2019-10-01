class Employee < ApplicationRecord
    has_many :devices
    def full_name
        "#{firstName}. #{lastName}"     
    end
end
