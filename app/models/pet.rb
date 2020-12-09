class Pet < ApplicationRecord
  has_many :pet_histories, dependent: :destroy
  belongs_to :client
  accepts_nested_attributes_for :pet_histories

  def history_count
    pet_histories.inject(0){ |sum, history | sum + history.visit }
    #TODO-implement
  end

  def avg_weight
    pet_histories.inject(0){ |sum, history | sum + history.weight}/pet_histories.length
    #TODO-implement
  end

  def avg_height
    pet_histories.inject(0){ |sum, history | sum + history.heigth.to_i}/pet_histories.length
    #TODO-implement
  end

  def max_weight
    pet_histories.inject(0) { |max, history| (history.weight> max ? history.weight : max)}
    #TODO-implement
  end

  def max_height
    pet_histories.inject(0) { |max, history| (history.heigth.to_i> max ? history.heigth.to_i : max)}
    #TODO-implement
  end

end
