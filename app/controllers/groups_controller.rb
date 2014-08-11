class GroupsController < ApplicationController
  def create
  	group = Group.new(params.require(:group).permit(:name, :description))
  	group.admin = current_user
  	group.save
  end

  def destroy
    group = Group.find(params[:id])
    group.destroy
  end

  def update
    group = Group.find(params[:id])
    group.update_attributes(params.require(:group).permit(:name, :description))
  end
end