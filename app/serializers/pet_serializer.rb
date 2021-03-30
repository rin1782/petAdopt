class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :about, :img_url, :user_id
end
