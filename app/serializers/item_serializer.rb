class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :purchase_date, :expiration_date, :serial_id, :user_id
  has_one :user
end
