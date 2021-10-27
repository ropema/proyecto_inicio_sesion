class Usuario < ApplicationRecord
    validates :first_name, :last_name, :email_address, :age, presence: true
    validates :age, numericality: true
    validates :first_name, :last_name, length: { minimum: 2 }
    validates :age, numericality: { greater_than_or_equal_to: 10, less_than_or_equal_to: 150 }

end
