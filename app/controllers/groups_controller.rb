class GroupsController < ApplicationController
  respond_to :json, :html
  
  def index
    respond_with Group.all
  end

  def create
  	group = Group.new(params.require(:group).permit(:name, :description))
  	group.admin = current_user
  	group.save
  end

  def show
    @group = Group.find_by id: params[:id]
    @contribution = Contribution.new
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