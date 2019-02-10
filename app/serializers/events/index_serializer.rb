class Events::IndexSerializer < ActiveModel::Serializer
  attributes :name, :description, :lat, :long
end
