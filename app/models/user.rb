class User < ActiveRecord::Base
  has_many :items
  validates :username, { presence: true, uniqueness: true }
  validates :password_hash, length: { is: 7 }
end

