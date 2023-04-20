class Product < ApplicationRecord
  belongs_to :user
  has_many :transactions, dependent: :destroy
  validates :name, :price, :description, presence: true

  has_one_attached :photo

end
