class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :pets

  def pets
    ActiveModel::SerializableResource.new(object.pets, each_serializer: PetSerializer)
  end

end
