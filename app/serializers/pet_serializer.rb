class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :dogs, :cats, :exotics
  # has_many :dogs
  # has_many :cats
  # has_many :exotics
end
