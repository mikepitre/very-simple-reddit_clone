class User < ActiveRecord::Base
  has_secure_password
  has_many :links

  def self.select_users
    all.map { |user| [user.name, user.id] }
  end
end
