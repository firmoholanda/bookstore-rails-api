require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }

  it { should validate_length_of(:name).is_at_least(3) }
  it { should validate_uniqueness_of(:email) }
  it { should validate_length_of(:password).is_at_least(5) }

  it { should have_many(:books).dependent(:delete_all) }
  it { should have_many(:favourites) }
  it { should have_many(:favourite_books).through(:favourites).source(:book) }
end