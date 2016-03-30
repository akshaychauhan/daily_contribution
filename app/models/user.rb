class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :trackable, :validatable#, :recoverable
  
  has_many :group_members
  has_many :groups
  has_many :groups_as_member, through: :group_members, source: :group
  has_many :contributions

  def full_text(text1, text2)
  	puts "................"
    return text1 + text2
  end
  
end
