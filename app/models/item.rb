class Item < ActiveRecord::Base
  belongs_to :user

  validate :auction_start_is_valid

  def auction_start_is_valid
    unless self.auction_start.instance_of? DateTime
      errors.add :auction_start, "must be datetime"
      return
    end
  end

end
