class Group < ActiveRecord::Base
  has_many :group_members
  belongs_to :admin, class_name: "User", foreign_key: "user_id"
  has_many :members, through: :group_members, source: :user
  has_many :contributions

  def test
  	return true
  end
  
end