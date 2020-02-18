class Credit < ApplicationRecord
  belongs_to :user, optional: true
  validates :cardnumber, :year, :month, :cssnumber ,presence: true
end
