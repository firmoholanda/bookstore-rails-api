require 'rails_helper'

RSpec.describe 'Books API', type: :request do
  let(:user) { create(:user) }
  let!(:books) { create_list(:book, 5, user_id: user.id) }
  let(:book_id) { books.first.id }
  let(:headers) { valid_headers }

  describe 'GET /books' do
    before { get '/books', params: {}, headers: headers }

    it 'returns books' do
      expect(json).not_to be_empty
      expect(json.size).to eq(5)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /books/:id' do
    before { get "/books/#{book_id}", params: {}, headers: headers }

    context 'when the record exists' do
      it 'returns the book' do
        expect(json).not_to be_empty
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:book_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

    end
  end
end