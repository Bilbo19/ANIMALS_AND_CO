class Animal < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :age, presence: true
  validates :description, presence: true
end
