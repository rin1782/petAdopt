class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :img_url
      t.string :about
      t.belongs_to :user

      t.timestamps
    end
  end
end
