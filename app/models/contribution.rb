class Contribution < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  belongs_to :contribution_period
  
end