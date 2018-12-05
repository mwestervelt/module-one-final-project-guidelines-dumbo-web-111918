class Cause < ActiveRecord::Base
  has_many :user_causes
  has_many :users, through: :user_causes

  # def all_user
  #   self.all.users.name
  # end
end
