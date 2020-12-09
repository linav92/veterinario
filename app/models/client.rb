class Client < ApplicationRecord
    has_many :pets, dependent: :destroy
    accepts_nested_attributes_for :pets
end