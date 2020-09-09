require 'rails_helper'

RSpec.describe Favourite, type: :model do
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:book_id) }

  it { should belong_to(:user) }
  it { should belong_to(:book) }
end
