class User < ApplicationRecord
  has_secure_password

  has_many :books, dependent: :delete_all
  has_many :favourites
  has_many :favourite_books, through: :favourites, source: :book

  validates_presence_of :name, :email, :password
  validates :name, length: { minimum: 3 }
  validates :email, uniqueness: true
  validates :password, length: { minimum: 5 }
end
