class ExoticSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :content
end
