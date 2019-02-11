class Comments::IndexSerializer < ActiveModel::Serializer
  attributes :text_body
  belongs_to :user
  belongs_to :event
end
