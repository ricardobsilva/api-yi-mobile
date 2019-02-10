class Event < ApplicationRecord
  validates :name, :description, :lat, :long, presence: true
  has_many :comments
end
