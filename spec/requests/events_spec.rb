require 'rails_helper'

RSpec.describe 'Events', type: :request do

  describe '#GET index' do
    before(:each) do
      get '/events'
    end

    context 'when find an event list' do
      it 'return status 200 code' do
        expect(response).to have_http_status(:ok)
      end
    end
  end
end
