class ItemSerializer < ActiveModel::Serializer
  attributes :id, :imageUrl, :description, :price
  has_one :category
end
