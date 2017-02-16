class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize

  def index
    @users = User.all
  end

  def update
    user = User.find(params[:id])
    user.remove_role user.roles.first.name # user only has one role
    user.add_role params[:role]
    redirect_to '/admin'
  end

  private

  def authorize
    if !current_user.has_role? :admin
      render text:"No access for you!"
    end
  end
end
