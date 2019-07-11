class DogSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :content
end
