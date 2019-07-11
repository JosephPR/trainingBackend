class CatSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :content
  has_one :pet
end
