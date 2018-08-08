class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :purchase_date, :expiration_date, :serial_id, :user_id, :warning
  has_one :user

  def warning
    warning_date = calculate_warning_date
    if (object.expiration_date.year - warning_date.year).positive? ||
       ((object.expiration_date.year - warning_date.year).zero? &&
       (object.expiration_date.month - warning_date.month).positive?) ||
       ((object.expiration_date.year - warning_date.year).zero? &&
       (object.expiration_date.month - warning_date.month).zero? &&
       (object.expiration_date.day - warning_date.day).positive?)
      return false
    else
      return true
    end
  end

  def calculate_warning_date
    if Date.today.month == 12
      Date.new(Date.today.year + 1, 1, Date.today.day)
    else
      Date.new(Date.today.year, Date.today.month + 1, Date.today.day)
    end
  end
end
