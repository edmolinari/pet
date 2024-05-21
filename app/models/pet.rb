class Pet < ApplicationRecord
  validates :name, presence: true
  validates :kind, presence: true
  validates :breed, presence: true
  validates :weight, numericality: { only_integer: false }

  belongs_to :owner, required: false
end
