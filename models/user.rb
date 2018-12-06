class User < ActiveRecord::Base
  has_many :user_causes
  has_many :causes, through: :user_causes

  def last_cause
    self.causes.last
  end
end
