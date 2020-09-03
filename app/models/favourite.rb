# frozen_string_literal: true

class Favourite < ApplicationRecord
  belongs_to :user
  belongs_to :book

  # validations
  validates_uniqueness_of :book_id, scope: [:user_id]
  validates_presence_of :user_id, :book_id
end
