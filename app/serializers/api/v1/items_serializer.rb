class Api::V1::ItemsSerializer < ActiveModel::Serializer
  attributes :name, :description, :url
end
