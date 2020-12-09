class ChangeVisitToPetHistories < ActiveRecord::Migration[5.2]
  def change
    change_column :pet_histories, :visit, :integer 
  end
end
