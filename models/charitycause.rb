class CharityCause < ActiveRecord::Base
  belongs_to :charity
  belongs_to :cause
end
