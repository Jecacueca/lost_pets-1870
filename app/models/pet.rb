class Pet < ApplicationRecord
  SPECIES = %w(dog cat bird ferret turtle rabbit pony)
  
  validates :name, presence: true
  validates :species, inclusion: { in: Pet::SPECIES }
end
