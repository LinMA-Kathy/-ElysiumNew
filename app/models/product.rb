class Product < ApplicationRecord
  belongs_to :user
  has_many :transactions, dependent: :destroy
  validates :name, :price, :description, presence: true

  has_many_attached :photos

  def image_url
    if photos.attached? && photos.first.present?
      return photos.first.url
    else
      # Return a default image URL if no photo is attached
      return "path/to/default_image.jpg"
    end
  end
end
