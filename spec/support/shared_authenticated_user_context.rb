# frozen_string_literal: true

shared_context 'with Authenticated User' do
  let(:user) { create(:user) }

  before do
    request.headers.merge! user.create_new_auth_token
  end
end