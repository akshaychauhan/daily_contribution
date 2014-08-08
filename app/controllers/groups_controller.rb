class GroupsController < ApplicationController
  def create
  	group = Group.new(params.require(:group).permit(:name, :description))
  	group.admin = current_user
  	group.save
  end

  def destroy
    
  end
end