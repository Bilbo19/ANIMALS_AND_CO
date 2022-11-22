class Animal < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :age, presence: true
  validates :description, presence: true, length: { minimum: 50, maximum: 200 }
end
