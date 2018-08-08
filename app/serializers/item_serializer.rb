class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :purchase_date, :expiration_date, :serial_id, :user_id, :warning
  has_one :user

  def warning
    if Date.today.month == 12
      warning_date = Date.new(Date.today.year + 1, 1, Date.today.day)
    else
      warning_date = Date.new(Date.today.year, Date.today.month + 1, Date.today.day)
    end

    warr_year = object.expiration_date.year
    warr_month = object.expiration_date.month
    warr_day = object.expiration_date.day

    # true means you need to send an email warning
    if (warr_year - warning_date.year).positive?
      return false
    elsif (warr_year - warning_date.year).zero? && (warr_month - warning_date.month).positive?
      return false
    elsif (warr_year - warning_date.year).zero? && (warr_month - warning_date.month).zero? && (warr_day - warning_date.day).positive?
      return false
    else
      return true
    end
  end
end
