class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :about, :img_url, :user_id
  has_one :user
end
