require 'rails_helper'

RSpec.describe Comment, type: :model do
  it{ is_expected.to validate_presence_of(:text_body)}

  it{ is_expected.to belong_to(:user) }
  it{ is_expected.to belong_to(:event) }
  it{ is_expected.to have_many(:reports)}
end
