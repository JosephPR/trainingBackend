class Pet < ApplicationRecord
  has_many :dogs
  has_many :cats
  has_many :exotics
end
