require 'rails_helper'

RSpec.describe 'Comments', type: :request do

  describe '#GET index' do
    before(:each) do
      get '/comments'
    end

    context 'when find a comment list' do
      it 'return status 200 code' do
        expect(response).to have_http_status(:ok)
      end
    end
  end

  describe '#POST create' do
    let(:event){FactoryBot.create(:event)}
    let(:user){FactoryBot.create(:user)}
    let(:new_comment) { FactoryBot.attributes_for(:comment, event_id: event.id, user_id: user.id) }

    context 'when create a new comment' do
      it 'return status 200 code' do
        post '/comments', params: { comment: new_comment}
        expect(response).to have_http_status(:ok)
      end
    end

    context 'when try create a new comment without some require data' do
      it 'return status 422 code' do
        post '/comments', params: { comment: FactoryBot.attributes_for(:comment) }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
