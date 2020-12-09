class RemovePetFromClient < ActiveRecord::Migration[5.2]
  def change
    remove_reference :clients, :pet, foreign_key: true
  end
end
