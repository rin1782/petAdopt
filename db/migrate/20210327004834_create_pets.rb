class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :about
      t.string :img_url
      t.integer :inquiries, default: 0
      t.integer :user_id

      t.timestamps
    end
  end
end
