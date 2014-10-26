class HomeController < ApplicationController
  before_action :authenticate_user!
   
  def index
    gon.groups = Group.all.select(:id, :name, :description)
  end
  
end