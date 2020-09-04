class User < ApplicationRecord
  # encrypt password
  has_secure_password

  # model associations
  has_many :books, dependent: :delete_all
  has_many :favourites
  has_many :favourite_books, through: :favourites, source: :book

  # validations
  validates_presence_of :name, :email, :password
  validates :name, length: { minimum: 3 }
  validates :email, uniqueness: true
  validates :password, length: { minimum: 5 }
end
