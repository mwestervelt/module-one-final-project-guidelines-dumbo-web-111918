class User < ActiveRecord::Base
  has_many :user_causes
  has_many :causes, through: :user_causes

  def first_cause
    self.causes.first.name
  end
end
