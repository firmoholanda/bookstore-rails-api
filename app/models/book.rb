class Book < ApplicationRecord
  belongs_to :user

  has_many :favourites, dependent: :delete_all
  has_many :favourited_by, through: :favourites, source: :user

  validates_presence_of :title, :description, :category

  validates :title, length: { in: 5..30 }
end
