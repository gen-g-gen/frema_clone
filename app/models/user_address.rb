class UserAddress < ApplicationRecord
  belongs_to :user, optional: true
  validates :zipcode, :address, :city, :address, :building ,presence: true
end
