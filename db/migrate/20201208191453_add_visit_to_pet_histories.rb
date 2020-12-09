class AddVisitToPetHistories < ActiveRecord::Migration[5.2]
  def change
    add_column :pet_histories, :visit, :string
  end
end
