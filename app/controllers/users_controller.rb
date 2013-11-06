class UsersController < ApplicationController
	before_filter :authenticate_user!
	
  def show
  	@user = User.find(params[:id])
    @pins = @user.pins.order("created_at desc").page(params[:page]).per_page(20)
  end
end
