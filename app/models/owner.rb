class Owner < ApplicationRecord
  validates :name, presence: true
  validates :phone, presence: true

  has_many :pets
end
