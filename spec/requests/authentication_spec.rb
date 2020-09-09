require 'rails_helper'

RSpec.describe 'Authentication', type: :request do
  describe 'POST /auth/login' do
    let!(:user) { create(:user) }
    let(:headers) { valid_headers.except('Authorization') }

    let(:valid) do
      {
        email: user.email,
        password: user.password
      }.to_json
    end

    let(:invalid) do
      {
        email: 'random@email.com',
        password: 'fakePassword'
      }.to_json
    end

    context 'When the request is valid' do
      before { post '/auth/login', params: valid, headers: headers }

      it 'returns an authentication token' do
        expect(json['auth_token']).not_to be_nil
      end
    end

    context 'When the request is invalid' do
      before { post '/auth/login', params: invalid, headers: headers }

      it 'returns a failure message' do
        expect(json['message']).to match(/invalid credentials/)
      end
    end
  end
end
