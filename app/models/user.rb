class User < ApplicationRecord
  validates :name, :email, :password, presence: true
  has_many :reports
  has_many :comments
end
