require 'rails_helper'

RSpec.describe Event, type: :model do
  it{ is_expected.to validate_presence_of(:name)}
  it{ is_expected.to validate_presence_of(:description)}
  it{ is_expected.to validate_presence_of(:lat)}
  it{ is_expected.to validate_presence_of(:long)}

  it{ is_expected.to have_many(:comments)}
end
