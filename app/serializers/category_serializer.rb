class CategorySerializer < ActiveModel::Serializer
  attributes :id, :title, :imageUrl

  has_many :items
end
