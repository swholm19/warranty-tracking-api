class Item < ApplicationRecord
  belongs_to :user
  validates :name, :expiration_date, presence: true
end
