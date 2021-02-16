class Flat < ApplicationRecord
  validates :name, :image_url, :price, :currency, presence: true
end
