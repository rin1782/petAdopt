class PetsController < ApplicationController
  
  def index
    pet = Pet.all

    render json: Pet.arr_to_json
  end

  # GET /pets/1
  def show
    pet = Pet.find(params[:id])
    render json: pet.instance_to_json
  end

  # POST /pets
  def create
    pet = Pet.new(pet_params)
    user = User.find_or_create_by(name: params[:user])
    pet.user_id =  user.id
    if pet.save
        render json: pet.instance_to_json
    else 
        render json: pet.errors, status: :unprocessable_entity
    end
end 

def update
  pet = Pet.find_by(id: params[:id])
  pet.update(inquiries: params[:about])
  if pet.save
      render json: pet.instance_to_json
  else 
      render json: pet.errors, status: :unprocessable_entity
  end
end 

  private

    # Only allow a list of trusted parameters through.
    def pet_params
      params.require(:pet).permit(:id, :name, :img_url, :about, :user_id)
    end
end
