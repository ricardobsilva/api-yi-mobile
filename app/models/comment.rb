class Comment < ApplicationRecord
  validates :text_body, presence: true
  belongs_to :user
  belongs_to :event
  has_many :reports
end
