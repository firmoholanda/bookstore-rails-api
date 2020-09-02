require 'rails_helper'

RSpec.describe Book, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:category) }
  
  it { should validate_length_of(:title).is_at_least(5).is_at_most(30) }

  it { should belong_to(:user) }
  it { should have_many(:favourites).dependent(:delete_all) }
  it { should have_many(:favourited_by).through(:favourites).source(:user) }
end