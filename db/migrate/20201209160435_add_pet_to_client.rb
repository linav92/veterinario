class AddPetToClient < ActiveRecord::Migration[5.2]
  def change
    add_reference :clients, :pet, foreign_key: true
  end
end
