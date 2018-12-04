class Charity < ActiveRecord::Base
  has_many :charity_causes
  has_many :causes, through: :charity_causes

  has_many :user_charities
  has_many :users, through: :user_charities
end
