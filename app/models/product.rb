class Product < ApplicationRecord
  belongs_to :user
  has_many :transactions, dependent: :destroy
  validates :name, :price, :description, presence: true
  has_many_attached :photos
end
